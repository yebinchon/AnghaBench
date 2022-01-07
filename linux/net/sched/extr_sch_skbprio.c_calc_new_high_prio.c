
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct skbprio_sched_data {int highest_prio; int lowest_prio; int * qdiscs; } ;


 int skb_queue_empty (int *) ;

__attribute__((used)) static u16 calc_new_high_prio(const struct skbprio_sched_data *q)
{
 int prio;

 for (prio = q->highest_prio - 1; prio >= q->lowest_prio; prio--) {
  if (!skb_queue_empty(&q->qdiscs[prio]))
   return prio;
 }


 return 0;
}
