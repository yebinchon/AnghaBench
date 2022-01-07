
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct htb_sched {int* row_mask; struct htb_level* hlevel; } ;
struct TYPE_2__ {int rb_node; } ;
struct htb_prio {scalar_t__ ptr; TYPE_1__ row; } ;
struct htb_level {struct htb_prio* hprio; } ;
struct htb_class {size_t level; scalar_t__ node; } ;


 int ffz (int) ;
 int htb_next_rb_node (scalar_t__*) ;
 int htb_safe_rb_erase (scalar_t__,TYPE_1__*) ;

__attribute__((used)) static inline void htb_remove_class_from_row(struct htb_sched *q,
       struct htb_class *cl, int mask)
{
 int m = 0;
 struct htb_level *hlevel = &q->hlevel[cl->level];

 while (mask) {
  int prio = ffz(~mask);
  struct htb_prio *hprio = &hlevel->hprio[prio];

  mask &= ~(1 << prio);
  if (hprio->ptr == cl->node + prio)
   htb_next_rb_node(&hprio->ptr);

  htb_safe_rb_erase(cl->node + prio, &hprio->row);
  if (!hprio->row.rb_node)
   m |= 1 << prio;
 }
 q->row_mask[cl->level] &= ~m;
}
