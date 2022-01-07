
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct red_sched_data {int adapt_timer; int vars; int parms; struct Qdisc* sch; } ;
struct Qdisc {int dummy; } ;
typedef int spinlock_t ;


 int HZ ;
 int adapt_timer ;
 struct red_sched_data* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct red_sched_data* q ;
 int * qdisc_lock (int ) ;
 int qdisc_root_sleeping (struct Qdisc*) ;
 int red_adaptative_algo (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void red_adaptative_timer(struct timer_list *t)
{
 struct red_sched_data *q = from_timer(q, t, adapt_timer);
 struct Qdisc *sch = q->sch;
 spinlock_t *root_lock = qdisc_lock(qdisc_root_sleeping(sch));

 spin_lock(root_lock);
 red_adaptative_algo(&q->parms, &q->vars);
 mod_timer(&q->adapt_timer, jiffies + HZ/2);
 spin_unlock(root_lock);
}
