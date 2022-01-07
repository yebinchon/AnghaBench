
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LONG_MAX ;
 int LONG_MIN ;
 int OPTARG_BALANCE_PERFORMANCE ;
 int OPTARG_BALANCE_POWER ;
 int OPTARG_NORMAL ;
 int OPTARG_PERFORMANCE ;
 int OPTARG_POWER ;
 int errx (int,char*,...) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 int strncmp (char*,char*,int) ;
 int strtol (char*,char**,int ) ;
 int usage () ;

int parse_optarg_string(char *s)
{
 int i;
 char *endptr;

 if (!strncmp(s, "default", 7))
  return OPTARG_NORMAL;

 if (!strncmp(s, "normal", 6))
  return OPTARG_NORMAL;

 if (!strncmp(s, "power", 9))
  return OPTARG_POWER;

 if (!strncmp(s, "balance-power", 17))
  return OPTARG_BALANCE_POWER;

 if (!strncmp(s, "balance-performance", 19))
  return OPTARG_BALANCE_PERFORMANCE;

 if (!strncmp(s, "performance", 11))
  return OPTARG_PERFORMANCE;

 i = strtol(s, &endptr, 0);
 if (s == endptr) {
  fprintf(stderr, "no digits in \"%s\"\n", s);
  usage();
 }
 if (i == LONG_MIN || i == LONG_MAX)
  errx(-1, "%s", s);

 if (i > 0xFF)
  errx(-1, "%d (0x%x) must be < 256", i, i);

 if (i < 0)
  errx(-1, "%d (0x%x) must be >= 0", i, i);
 return i;
}
