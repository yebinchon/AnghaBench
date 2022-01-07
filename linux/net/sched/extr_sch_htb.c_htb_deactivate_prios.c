
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct htb_sched {int dummy; } ;
struct TYPE_7__ {TYPE_2__* clprio; } ;
struct TYPE_5__ {int classid; } ;
struct htb_class {long prio_activity; scalar_t__ cmode; struct htb_class* parent; TYPE_3__ inner; int * node; TYPE_1__ common; } ;
struct TYPE_8__ {int rb_node; } ;
struct TYPE_6__ {TYPE_4__ feed; int * ptr; int last_ptr_id; } ;


 scalar_t__ HTB_CAN_SEND ;
 scalar_t__ HTB_MAY_BORROW ;
 int ffz (long) ;
 int htb_remove_class_from_row (struct htb_sched*,struct htb_class*,long) ;
 int htb_safe_rb_erase (int *,TYPE_4__*) ;

__attribute__((used)) static void htb_deactivate_prios(struct htb_sched *q, struct htb_class *cl)
{
 struct htb_class *p = cl->parent;
 long m, mask = cl->prio_activity;

 while (cl->cmode == HTB_MAY_BORROW && p && mask) {
  m = mask;
  mask = 0;
  while (m) {
   int prio = ffz(~m);
   m &= ~(1 << prio);

   if (p->inner.clprio[prio].ptr == cl->node + prio) {




    p->inner.clprio[prio].last_ptr_id = cl->common.classid;
    p->inner.clprio[prio].ptr = ((void*)0);
   }

   htb_safe_rb_erase(cl->node + prio,
       &p->inner.clprio[prio].feed);

   if (!p->inner.clprio[prio].feed.rb_node)
    mask |= 1 << prio;
  }

  p->prio_activity &= ~mask;
  cl = p;
  p = cl->parent;

 }
 if (cl->cmode == HTB_CAN_SEND && mask)
  htb_remove_class_from_row(q, cl, mask);
}
