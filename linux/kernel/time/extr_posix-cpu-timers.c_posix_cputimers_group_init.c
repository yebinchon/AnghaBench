
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct posix_cputimers {int timers_active; TYPE_1__* bases; } ;
struct TYPE_2__ {int nextevt; } ;


 size_t CPUCLOCK_PROF ;
 int NSEC_PER_SEC ;
 int RLIM_INFINITY ;
 int posix_cputimers_init (struct posix_cputimers*) ;

void posix_cputimers_group_init(struct posix_cputimers *pct, u64 cpu_limit)
{
 posix_cputimers_init(pct);
 if (cpu_limit != RLIM_INFINITY) {
  pct->bases[CPUCLOCK_PROF].nextevt = cpu_limit * NSEC_PER_SEC;
  pct->timers_active = 1;
 }
}
