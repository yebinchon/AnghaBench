
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct plug_sched_data {int throttled; int pkts_to_release; int unplug_indefinite; } ;
struct Qdisc {int dummy; } ;


 struct sk_buff* qdisc_dequeue_head (struct Qdisc*) ;
 struct plug_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static struct sk_buff *plug_dequeue(struct Qdisc *sch)
{
 struct plug_sched_data *q = qdisc_priv(sch);

 if (q->throttled)
  return ((void*)0);

 if (!q->unplug_indefinite) {
  if (!q->pkts_to_release) {



   q->throttled = 1;
   return ((void*)0);
  }
  q->pkts_to_release--;
 }

 return qdisc_dequeue_head(sch);
}
