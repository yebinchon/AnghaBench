
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__* cpustat; } ;


 size_t CPUTIME_STEAL ;
 TYPE_1__* kcpustat_this_cpu ;

void account_steal_time(u64 cputime)
{
 u64 *cpustat = kcpustat_this_cpu->cpustat;

 cpustat[CPUTIME_STEAL] += cputime;
}
