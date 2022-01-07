
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bad_config (char const*) ;
 int perf_parse_long (char const*,long*) ;

int perf_config_int(int *dest, const char *name, const char *value)
{
 long ret = 0;
 if (!perf_parse_long(value, &ret)) {
  bad_config(name);
  return -1;
 }
 *dest = ret;
 return 0;
}
