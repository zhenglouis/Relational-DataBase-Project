--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    galaxy_code integer NOT NULL,
    galaxy_size numeric,
    name character varying(40),
    galaxy_visible boolean,
    galaxy_reachable boolean,
    galaxy_alias text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    moon_code integer NOT NULL,
    moon_size numeric,
    name character varying(40),
    moon_visible boolean,
    moon_reachable boolean,
    moon_alias text,
    planet_code integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: other_galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.other_galaxy (
    other_galaxy_id integer NOT NULL,
    name character varying(40),
    other_galaxy_alias text,
    other_galaxy_code numeric NOT NULL
);


ALTER TABLE public.other_galaxy OWNER TO freecodecamp;

--
-- Name: other_galaxy_other_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.other_galaxy_other_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.other_galaxy_other_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: other_galaxy_other_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.other_galaxy_other_galaxy_id_seq OWNED BY public.other_galaxy.other_galaxy_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    planet_code integer NOT NULL,
    planet_size numeric,
    name character varying(40),
    planet_visible boolean,
    planet_reachable boolean,
    planet_alias text,
    star_code integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    star_code integer NOT NULL,
    star_size numeric,
    name character varying(40),
    star_visible boolean,
    star_reachable boolean,
    star_alias text,
    galaxy_code integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: other_galaxy other_galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other_galaxy ALTER COLUMN other_galaxy_id SET DEFAULT nextval('public.other_galaxy_other_galaxy_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 1, 325464, 'AAAA', true, true, 'aaaa');
INSERT INTO public.galaxy VALUES (2, 2, 654853, 'BBBB', true, false, 'bbbb');
INSERT INTO public.galaxy VALUES (3, 3, 523486, 'CCCC', true, false, 'cccc');
INSERT INTO public.galaxy VALUES (4, 4, 354197, 'DDDD', true, true, 'dddd');
INSERT INTO public.galaxy VALUES (5, 5, 657813, 'EEEE', true, false, 'eeee');
INSERT INTO public.galaxy VALUES (6, 6, 975135, 'FFFF', true, false, 'ffff');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1111, 2222, 12, 'A', true, true, 'a', 111);
INSERT INTO public.moon VALUES (1112, 1112, 12, 'A', true, true, 'a', 222);
INSERT INTO public.moon VALUES (1113, 1113, 12, 'A', true, true, 'a', 333);
INSERT INTO public.moon VALUES (1114, 1114, 12, 'A', true, true, 'a', 444);
INSERT INTO public.moon VALUES (1115, 1115, 12, 'A', true, true, 'a', 555);
INSERT INTO public.moon VALUES (1116, 1116, 12, 'A', true, true, 'a', 666);
INSERT INTO public.moon VALUES (1117, 1117, 12, 'A', true, true, 'a', 777);
INSERT INTO public.moon VALUES (1118, 1118, 12, 'A', true, true, 'a', 888);
INSERT INTO public.moon VALUES (1119, 1119, 12, 'A', true, true, 'a', 999);
INSERT INTO public.moon VALUES (2221, 2221, 12, 'A', true, true, 'a', 111);
INSERT INTO public.moon VALUES (2222, 22222, 12, 'A', true, true, 'a', 222);
INSERT INTO public.moon VALUES (2223, 2223, 12, 'A', true, true, 'a', 333);
INSERT INTO public.moon VALUES (2224, 2224, 12, 'A', true, true, 'a', 444);
INSERT INTO public.moon VALUES (2225, 2225, 12, 'A', true, true, 'a', 555);
INSERT INTO public.moon VALUES (222, 2226, 12, 'A', true, true, 'a', 666);
INSERT INTO public.moon VALUES (221, 221, 12, 'A', true, true, 'a', 666);
INSERT INTO public.moon VALUES (223, 222, 12, 'A', true, true, 'a', 666);
INSERT INTO public.moon VALUES (2227, 2227, 12, 'A', true, true, 'a', 777);
INSERT INTO public.moon VALUES (2228, 2228, 12, 'A', true, true, 'a', 888);
INSERT INTO public.moon VALUES (2229, 2229, 12, 'A', true, true, 'a', 999);


--
-- Data for Name: other_galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.other_galaxy VALUES (999, NULL, NULL, 999);
INSERT INTO public.other_galaxy VALUES (888, NULL, NULL, 888);
INSERT INTO public.other_galaxy VALUES (777, NULL, NULL, 777);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (111, 111, 3641, 'AA', true, true, 'aa', 11);
INSERT INTO public.planet VALUES (222, 222, 6542, 'BB', true, true, 'bb', 22);
INSERT INTO public.planet VALUES (333, 333, 6544, 'CC', true, true, 'cc', 33);
INSERT INTO public.planet VALUES (444, 444, 1254, 'DD', true, true, 'dd', 44);
INSERT INTO public.planet VALUES (555, 555, 3254, 'EE', true, true, 'ee', 55);
INSERT INTO public.planet VALUES (666, 666, 3254, 'FF', true, true, 'ff', 66);
INSERT INTO public.planet VALUES (777, 777, 4568, 'GG', true, true, 'gg', 11);
INSERT INTO public.planet VALUES (888, 888, 12, 'HH', false, true, 'hh', 22);
INSERT INTO public.planet VALUES (999, 999, 3654, 'II', false, true, 'ii', 33);
INSERT INTO public.planet VALUES (1000, 1000, 7541, 'JJ', false, false, 'jj', 44);
INSERT INTO public.planet VALUES (1100, 1100, 7456, 'KK', false, false, 'kk', 55);
INSERT INTO public.planet VALUES (1200, 1200, 7456, 'LL', false, false, 'll', 66);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (11, 11, 12574, 'AAA', true, true, 'aaa', 1);
INSERT INTO public.star VALUES (22, 22, 65464, 'BBB', true, true, 'bbb', 2);
INSERT INTO public.star VALUES (33, 33, 63247, 'CCC', true, true, 'ccc', 3);
INSERT INTO public.star VALUES (44, 44, 96425, 'DDD', true, false, 'ddd', 4);
INSERT INTO public.star VALUES (55, 55, 36412, 'EEE', true, false, 'eee', 5);
INSERT INTO public.star VALUES (66, 66, 36412, 'FFF', true, true, 'fff', 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: other_galaxy_other_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.other_galaxy_other_galaxy_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_galaxy_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_code_key UNIQUE (galaxy_code);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_code_key UNIQUE (moon_code);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: other_galaxy other_galaxy_other_galaxy_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other_galaxy
    ADD CONSTRAINT other_galaxy_other_galaxy_code_key UNIQUE (other_galaxy_code);


--
-- Name: other_galaxy other_galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other_galaxy
    ADD CONSTRAINT other_galaxy_pkey PRIMARY KEY (other_galaxy_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_code_key UNIQUE (planet_code);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_code_key UNIQUE (star_code);


--
-- Name: moon moon_planet_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_code_fkey FOREIGN KEY (planet_code) REFERENCES public.planet(planet_code);


--
-- Name: planet planet_star_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_code_fkey FOREIGN KEY (star_code) REFERENCES public.star(star_code);


--
-- Name: star star_galaxy_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_code_fkey FOREIGN KEY (galaxy_code) REFERENCES public.galaxy(galaxy_code);


--
-- PostgreSQL database dump complete
--

