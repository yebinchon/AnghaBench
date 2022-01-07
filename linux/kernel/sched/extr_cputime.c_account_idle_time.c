
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct rq {int nr_iowait; } ;
struct TYPE_2__ {scalar_t__* cpustat; } ;


 size_t CPUTIME_IDLE ;
 size_t CPUTIME_IOWAIT ;
 scalar_t__ atomic_read (int *) ;
 TYPE_1__* kcpustat_this_cpu ;
 struct rq* this_rq () ;

void account_idle_time(u64 cputime)
{
 u64 *cpustat = kcpustat_this_cpu->cpustat;
 struct rq *rq = this_rq();

 if (atomic_read(&rq->nr_iowait) > 0)
  cpustat[CPUTIME_IOWAIT] += cputime;
 else
  cpustat[CPUTIME_IDLE] += cputime;
}
