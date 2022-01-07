
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const**) ;
 char const** perf_ns__names ;

const char *perf_ns__name(unsigned int id)
{
 if (id >= ARRAY_SIZE(perf_ns__names))
  return "UNKNOWN";
 return perf_ns__names[id];
}
