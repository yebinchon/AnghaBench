
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ tupdate; } ;
struct pie_sched_data {TYPE_1__ params; int adapt_timer; struct Qdisc* sch; } ;
struct Qdisc {int dummy; } ;
typedef int spinlock_t ;


 int adapt_timer ;
 int calculate_probability (struct Qdisc*) ;
 struct pie_sched_data* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct pie_sched_data* q ;
 int * qdisc_lock (int ) ;
 int qdisc_root_sleeping (struct Qdisc*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void pie_timer(struct timer_list *t)
{
 struct pie_sched_data *q = from_timer(q, t, adapt_timer);
 struct Qdisc *sch = q->sch;
 spinlock_t *root_lock = qdisc_lock(qdisc_root_sleeping(sch));

 spin_lock(root_lock);
 calculate_probability(sch);


 if (q->params.tupdate)
  mod_timer(&q->adapt_timer, jiffies + q->params.tupdate);
 spin_unlock(root_lock);
}
