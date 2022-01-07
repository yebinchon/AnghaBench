
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct choke_sched_data {size_t head; int tab_mask; int tail; int ** tab; } ;



__attribute__((used)) static void choke_zap_head_holes(struct choke_sched_data *q)
{
 do {
  q->head = (q->head + 1) & q->tab_mask;
  if (q->head == q->tail)
   break;
 } while (q->tab[q->head] == ((void*)0));
}
