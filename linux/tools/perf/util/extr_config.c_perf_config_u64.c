
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long u64 ;


 int bad_config (char const*) ;
 int perf_parse_llong (char const*,long long*) ;

int perf_config_u64(u64 *dest, const char *name, const char *value)
{
 long long ret = 0;

 if (!perf_parse_llong(value, &ret)) {
  bad_config(name);
  return -1;
 }

 *dest = ret;
 return 0;
}
