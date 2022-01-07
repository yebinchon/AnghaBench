
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 int NEXT_ARGP () ;
 int p_err (char*,char const*,...) ;
 int strtoul (char*,char**,int ) ;

int parse_u32_arg(int *argc, char ***argv, __u32 *val, const char *what)
{
 char *endptr;

 NEXT_ARGP();

 if (*val) {
  p_err("%s already specified", what);
  return -1;
 }

 *val = strtoul(**argv, &endptr, 0);
 if (*endptr) {
  p_err("can't parse %s as %s", **argv, what);
  return -1;
 }
 NEXT_ARGP();

 return 0;
}
