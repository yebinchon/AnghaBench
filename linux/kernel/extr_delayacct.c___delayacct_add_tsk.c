
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct taskstats {unsigned long cpu_count; scalar_t__ blkio_delay_total; scalar_t__ swapin_delay_total; scalar_t__ freepages_delay_total; scalar_t__ thrashing_delay_total; int thrashing_count; int freepages_count; int swapin_count; int blkio_count; scalar_t__ cpu_run_virtual_total; scalar_t__ cpu_delay_total; scalar_t__ cpu_scaled_run_real_total; scalar_t__ cpu_run_real_total; } ;
struct TYPE_5__ {unsigned long long sum_exec_runtime; } ;
struct TYPE_4__ {unsigned long pcount; unsigned long long run_delay; } ;
struct task_struct {TYPE_3__* delays; TYPE_2__ se; TYPE_1__ sched_info; } ;
typedef scalar_t__ s64 ;
struct TYPE_6__ {scalar_t__ blkio_delay; scalar_t__ swapin_delay; scalar_t__ freepages_delay; scalar_t__ thrashing_delay; int lock; scalar_t__ thrashing_count; scalar_t__ freepages_count; scalar_t__ swapin_count; scalar_t__ blkio_count; } ;


 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int task_cputime (struct task_struct*,scalar_t__*,scalar_t__*) ;
 int task_cputime_scaled (struct task_struct*,scalar_t__*,scalar_t__*) ;

int __delayacct_add_tsk(struct taskstats *d, struct task_struct *tsk)
{
 u64 utime, stime, stimescaled, utimescaled;
 unsigned long long t2, t3;
 unsigned long flags, t1;
 s64 tmp;

 task_cputime(tsk, &utime, &stime);
 tmp = (s64)d->cpu_run_real_total;
 tmp += utime + stime;
 d->cpu_run_real_total = (tmp < (s64)d->cpu_run_real_total) ? 0 : tmp;

 task_cputime_scaled(tsk, &utimescaled, &stimescaled);
 tmp = (s64)d->cpu_scaled_run_real_total;
 tmp += utimescaled + stimescaled;
 d->cpu_scaled_run_real_total =
  (tmp < (s64)d->cpu_scaled_run_real_total) ? 0 : tmp;





 t1 = tsk->sched_info.pcount;
 t2 = tsk->sched_info.run_delay;
 t3 = tsk->se.sum_exec_runtime;

 d->cpu_count += t1;

 tmp = (s64)d->cpu_delay_total + t2;
 d->cpu_delay_total = (tmp < (s64)d->cpu_delay_total) ? 0 : tmp;

 tmp = (s64)d->cpu_run_virtual_total + t3;
 d->cpu_run_virtual_total =
  (tmp < (s64)d->cpu_run_virtual_total) ? 0 : tmp;



 raw_spin_lock_irqsave(&tsk->delays->lock, flags);
 tmp = d->blkio_delay_total + tsk->delays->blkio_delay;
 d->blkio_delay_total = (tmp < d->blkio_delay_total) ? 0 : tmp;
 tmp = d->swapin_delay_total + tsk->delays->swapin_delay;
 d->swapin_delay_total = (tmp < d->swapin_delay_total) ? 0 : tmp;
 tmp = d->freepages_delay_total + tsk->delays->freepages_delay;
 d->freepages_delay_total = (tmp < d->freepages_delay_total) ? 0 : tmp;
 tmp = d->thrashing_delay_total + tsk->delays->thrashing_delay;
 d->thrashing_delay_total = (tmp < d->thrashing_delay_total) ? 0 : tmp;
 d->blkio_count += tsk->delays->blkio_count;
 d->swapin_count += tsk->delays->swapin_count;
 d->freepages_count += tsk->delays->freepages_count;
 d->thrashing_count += tsk->delays->thrashing_count;
 raw_spin_unlock_irqrestore(&tsk->delays->lock, flags);

 return 0;
}
