
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct sfq_sched_data {scalar_t__ perturb_period; int perturb_timer; scalar_t__ tail; int filter_list; int perturbation; struct Qdisc* sch; } ;
struct Qdisc {int dummy; } ;
typedef int spinlock_t ;
typedef int siphash_key_t ;
typedef int nkey ;


 struct sfq_sched_data* from_timer (int ,struct timer_list*,int ) ;
 int get_random_bytes (int *,int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int perturb_timer ;
 struct sfq_sched_data* q ;
 int * qdisc_lock (int ) ;
 int qdisc_root_sleeping (struct Qdisc*) ;
 int sfq_rehash (struct Qdisc*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void sfq_perturbation(struct timer_list *t)
{
 struct sfq_sched_data *q = from_timer(q, t, perturb_timer);
 struct Qdisc *sch = q->sch;
 spinlock_t *root_lock = qdisc_lock(qdisc_root_sleeping(sch));
 siphash_key_t nkey;

 get_random_bytes(&nkey, sizeof(nkey));
 spin_lock(root_lock);
 q->perturbation = nkey;
 if (!q->filter_list && q->tail)
  sfq_rehash(sch);
 spin_unlock(root_lock);

 if (q->perturb_period)
  mod_timer(&q->perturb_timer, jiffies + q->perturb_period);
}
