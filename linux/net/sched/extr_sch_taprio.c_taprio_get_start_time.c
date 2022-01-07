
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct taprio_sched {int dummy; } ;
struct sched_gate_list {int cycle_time; } ;
struct Qdisc {int dummy; } ;
typedef int s64 ;
typedef int ktime_t ;


 int EFAULT ;
 scalar_t__ WARN_ON (int) ;
 int div64_s64 (int ,int) ;
 int ktime_add_ns (int,int) ;
 scalar_t__ ktime_after (int,int) ;
 int ktime_sub_ns (int,int) ;
 struct taprio_sched* qdisc_priv (struct Qdisc*) ;
 int sched_base_time (struct sched_gate_list*) ;
 int taprio_get_time (struct taprio_sched*) ;

__attribute__((used)) static int taprio_get_start_time(struct Qdisc *sch,
     struct sched_gate_list *sched,
     ktime_t *start)
{
 struct taprio_sched *q = qdisc_priv(sch);
 ktime_t now, base, cycle;
 s64 n;

 base = sched_base_time(sched);
 now = taprio_get_time(q);

 if (ktime_after(base, now)) {
  *start = base;
  return 0;
 }

 cycle = sched->cycle_time;






 if (WARN_ON(!cycle))
  return -EFAULT;




 n = div64_s64(ktime_sub_ns(now, base), cycle);
 *start = ktime_add_ns(base, (n + 1) * cycle);
 return 0;
}
