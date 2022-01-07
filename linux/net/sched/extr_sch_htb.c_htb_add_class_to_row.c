
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct htb_sched {int* row_mask; TYPE_2__* hlevel; } ;
struct htb_class {size_t level; } ;
struct TYPE_4__ {TYPE_1__* hprio; } ;
struct TYPE_3__ {int row; } ;


 int ffz (int) ;
 int htb_add_to_id_tree (int *,struct htb_class*,int) ;

__attribute__((used)) static inline void htb_add_class_to_row(struct htb_sched *q,
     struct htb_class *cl, int mask)
{
 q->row_mask[cl->level] |= mask;
 while (mask) {
  int prio = ffz(~mask);
  mask &= ~(1 << prio);
  htb_add_to_id_tree(&q->hlevel[cl->level].hprio[prio].row, cl, prio);
 }
}
