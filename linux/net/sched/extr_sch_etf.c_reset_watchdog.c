
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int tstamp; } ;
struct etf_sched_data {int watchdog; int delta; } ;
struct Qdisc {int dummy; } ;
typedef int ktime_t ;


 struct sk_buff* etf_peek_timesortedlist (struct Qdisc*) ;
 int ktime_sub_ns (int ,int ) ;
 int ktime_to_ns (int ) ;
 struct etf_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_watchdog_cancel (int *) ;
 int qdisc_watchdog_schedule_ns (int *,int ) ;

__attribute__((used)) static void reset_watchdog(struct Qdisc *sch)
{
 struct etf_sched_data *q = qdisc_priv(sch);
 struct sk_buff *skb = etf_peek_timesortedlist(sch);
 ktime_t next;

 if (!skb) {
  qdisc_watchdog_cancel(&q->watchdog);
  return;
 }

 next = ktime_sub_ns(skb->tstamp, q->delta);
 qdisc_watchdog_schedule_ns(&q->watchdog, ktime_to_ns(next));
}
