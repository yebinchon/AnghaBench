
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct choke_sched_data {size_t tail; int tab_mask; int head; int ** tab; } ;



__attribute__((used)) static void choke_zap_tail_holes(struct choke_sched_data *q)
{
 do {
  q->tail = (q->tail - 1) & q->tab_mask;
  if (q->head == q->tail)
   break;
 } while (q->tab[q->tail] == ((void*)0));
}
