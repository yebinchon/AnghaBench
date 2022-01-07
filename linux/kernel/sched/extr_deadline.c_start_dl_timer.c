
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int dummy; } ;
struct sched_dl_entity {struct hrtimer dl_timer; } ;
struct task_struct {struct sched_dl_entity dl; } ;
struct rq {int lock; } ;
typedef scalar_t__ s64 ;
typedef int ktime_t ;


 int HRTIMER_MODE_ABS_HARD ;
 int dl_next_period (struct sched_dl_entity*) ;
 int get_task_struct (struct task_struct*) ;
 int hrtimer_cb_get_time (struct hrtimer*) ;
 int hrtimer_is_queued (struct hrtimer*) ;
 int hrtimer_start (struct hrtimer*,int ,int ) ;
 int ktime_add_ns (int ,scalar_t__) ;
 scalar_t__ ktime_to_ns (int ) ;
 scalar_t__ ktime_us_delta (int ,int ) ;
 int lockdep_assert_held (int *) ;
 int ns_to_ktime (int ) ;
 scalar_t__ rq_clock (struct rq*) ;
 struct rq* task_rq (struct task_struct*) ;

__attribute__((used)) static int start_dl_timer(struct task_struct *p)
{
 struct sched_dl_entity *dl_se = &p->dl;
 struct hrtimer *timer = &dl_se->dl_timer;
 struct rq *rq = task_rq(p);
 ktime_t now, act;
 s64 delta;

 lockdep_assert_held(&rq->lock);






 act = ns_to_ktime(dl_next_period(dl_se));
 now = hrtimer_cb_get_time(timer);
 delta = ktime_to_ns(now) - rq_clock(rq);
 act = ktime_add_ns(act, delta);






 if (ktime_us_delta(act, now) < 0)
  return 0;
 if (!hrtimer_is_queued(timer)) {
  get_task_struct(p);
  hrtimer_start(timer, act, HRTIMER_MODE_ABS_HARD);
 }

 return 1;
}
