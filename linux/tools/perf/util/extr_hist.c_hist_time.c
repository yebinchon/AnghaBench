
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long time_quantum; } ;


 TYPE_1__ symbol_conf ;

__attribute__((used)) static long hist_time(unsigned long htime)
{
 unsigned long time_quantum = symbol_conf.time_quantum;
 if (time_quantum)
  return (htime / time_quantum) * time_quantum;
 return htime;
}
