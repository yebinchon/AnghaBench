
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int tstamp; } ;
struct etf_sched_data {int delta; scalar_t__ deadline_mode; int (* get_time ) () ;} ;
struct Qdisc {int dummy; } ;
typedef int ktime_t ;


 struct sk_buff* etf_peek_timesortedlist (struct Qdisc*) ;
 scalar_t__ ktime_after (int ,int ) ;
 scalar_t__ ktime_before (int ,int ) ;
 int ktime_sub_ns (int ,int ) ;
 struct etf_sched_data* qdisc_priv (struct Qdisc*) ;
 int reset_watchdog (struct Qdisc*) ;
 int stub1 () ;
 int timesortedlist_drop (struct Qdisc*,struct sk_buff*,int ) ;
 int timesortedlist_remove (struct Qdisc*,struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *etf_dequeue_timesortedlist(struct Qdisc *sch)
{
 struct etf_sched_data *q = qdisc_priv(sch);
 struct sk_buff *skb;
 ktime_t now, next;

 skb = etf_peek_timesortedlist(sch);
 if (!skb)
  return ((void*)0);

 now = q->get_time();


 if (ktime_before(skb->tstamp, now)) {
  timesortedlist_drop(sch, skb, now);
  skb = ((void*)0);
  goto out;
 }




 if (q->deadline_mode) {
  timesortedlist_remove(sch, skb);
  skb->tstamp = now;
  goto out;
 }

 next = ktime_sub_ns(skb->tstamp, q->delta);


 if (ktime_after(now, next))
  timesortedlist_remove(sch, skb);
 else
  skb = ((void*)0);

out:

 reset_watchdog(sch);

 return skb;
}
