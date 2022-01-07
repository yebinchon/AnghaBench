
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct task_struct {TYPE_3__* signal; } ;
struct TYPE_4__ {TYPE_2__* bases; } ;
struct TYPE_6__ {TYPE_1__ posix_cputimers; } ;
struct TYPE_5__ {scalar_t__ nextevt; } ;


 unsigned int CPUCLOCK_SCHED ;
 int TICK_DEP_BIT_POSIX_TIMER ;
 scalar_t__ TICK_NSEC ;
 scalar_t__ WARN_ON_ONCE (int) ;
 scalar_t__ cpu_clock_sample_group (unsigned int,struct task_struct*,int) ;
 int tick_dep_set_signal (TYPE_3__*,int ) ;

void set_process_cpu_timer(struct task_struct *tsk, unsigned int clkid,
      u64 *newval, u64 *oldval)
{
 u64 now, *nextevt;

 if (WARN_ON_ONCE(clkid >= CPUCLOCK_SCHED))
  return;

 nextevt = &tsk->signal->posix_cputimers.bases[clkid].nextevt;
 now = cpu_clock_sample_group(clkid, tsk, 1);

 if (oldval) {





  if (*oldval) {
   if (*oldval <= now) {

    *oldval = TICK_NSEC;
   } else {
    *oldval -= now;
   }
  }

  if (!*newval)
   return;
  *newval += now;
 }





 if (*newval < *nextevt)
  *nextevt = *newval;

 tick_dep_set_signal(tsk->signal, TICK_DEP_BIT_POSIX_TIMER);
}
