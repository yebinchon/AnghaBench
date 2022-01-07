
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct skbprio_sched_data {int lowest_prio; int highest_prio; int * qdiscs; } ;


 int SKBPRIO_MAX_PRIORITY ;
 int skb_queue_empty (int *) ;

__attribute__((used)) static u16 calc_new_low_prio(const struct skbprio_sched_data *q)
{
 int prio;

 for (prio = q->lowest_prio + 1; prio <= q->highest_prio; prio++) {
  if (!skb_queue_empty(&q->qdiscs[prio]))
   return prio;
 }




 return SKBPRIO_MAX_PRIORITY - 1;
}
