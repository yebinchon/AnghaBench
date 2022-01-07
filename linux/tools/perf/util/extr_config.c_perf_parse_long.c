
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int parse_unit_factor (char*,unsigned long*) ;
 long strtol (char const*,char**,int ) ;

__attribute__((used)) static int perf_parse_long(const char *value, long *ret)
{
 if (value && *value) {
  char *end;
  long val = strtol(value, &end, 0);
  unsigned long factor = 1;
  if (!parse_unit_factor(end, &factor))
   return 0;
  *ret = val * factor;
  return 1;
 }
 return 0;
}
