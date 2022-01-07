
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PERF_MEM_EVENTS__LOAD ;

char *perf_mem_events__name(int i)
{
 if (i == PERF_MEM_EVENTS__LOAD)
  return (char *) "cpu/mem-loads/";

 return (char *) "cpu/mem-stores/";
}
