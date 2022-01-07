
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BENCH_FORMAT_DEFAULT ;
 int BENCH_FORMAT_DEFAULT_STR ;
 int BENCH_FORMAT_SIMPLE ;
 int BENCH_FORMAT_SIMPLE_STR ;
 int BENCH_FORMAT_UNKNOWN ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static int bench_str2int(const char *str)
{
 if (!str)
  return BENCH_FORMAT_DEFAULT;

 if (!strcmp(str, BENCH_FORMAT_DEFAULT_STR))
  return BENCH_FORMAT_DEFAULT;
 else if (!strcmp(str, BENCH_FORMAT_SIMPLE_STR))
  return BENCH_FORMAT_SIMPLE;

 return BENCH_FORMAT_UNKNOWN;
}
