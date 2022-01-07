
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfb_sched_data {int slot; int double_buffering; } ;


 int sfb_init_perturbation (int,struct sfb_sched_data*) ;

__attribute__((used)) static void sfb_swap_slot(struct sfb_sched_data *q)
{
 sfb_init_perturbation(q->slot, q);
 q->slot ^= 1;
 q->double_buffering = 0;
}
