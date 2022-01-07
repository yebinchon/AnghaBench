
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct htb_sched {TYPE_1__* hlevel; } ;
struct TYPE_4__ {struct Qdisc* q; } ;
struct htb_class {size_t level; scalar_t__ cmode; int t_c; int cbuffer; int ctokens; int buffer; int tokens; TYPE_2__ leaf; int inner; int pq_node; scalar_t__ prio_activity; struct htb_class* parent; } ;
struct Qdisc {int dummy; } ;
struct TYPE_3__ {int wait_pq; } ;


 scalar_t__ HTB_CAN_SEND ;
 int WARN_ON (int) ;
 int htb_safe_rb_erase (int *,int *) ;
 int ktime_get_ns () ;
 int memset (int *,int ,int) ;
 struct Qdisc noop_qdisc ;

__attribute__((used)) static void htb_parent_to_leaf(struct htb_sched *q, struct htb_class *cl,
          struct Qdisc *new_q)
{
 struct htb_class *parent = cl->parent;

 WARN_ON(cl->level || !cl->leaf.q || cl->prio_activity);

 if (parent->cmode != HTB_CAN_SEND)
  htb_safe_rb_erase(&parent->pq_node,
      &q->hlevel[parent->level].wait_pq);

 parent->level = 0;
 memset(&parent->inner, 0, sizeof(parent->inner));
 parent->leaf.q = new_q ? new_q : &noop_qdisc;
 parent->tokens = parent->buffer;
 parent->ctokens = parent->cbuffer;
 parent->t_c = ktime_get_ns();
 parent->cmode = HTB_CAN_SEND;
}
