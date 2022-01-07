
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct posix_cputimers {TYPE_1__* bases; } ;
struct TYPE_2__ {int tqhead; } ;


 size_t CPUCLOCK_PROF ;
 size_t CPUCLOCK_SCHED ;
 size_t CPUCLOCK_VIRT ;
 int cleanup_timerqueue (int *) ;

__attribute__((used)) static void cleanup_timers(struct posix_cputimers *pct)
{
 cleanup_timerqueue(&pct->bases[CPUCLOCK_PROF].tqhead);
 cleanup_timerqueue(&pct->bases[CPUCLOCK_VIRT].tqhead);
 cleanup_timerqueue(&pct->bases[CPUCLOCK_SCHED].tqhead);
}
