
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct htb_sched {int dummy; } ;
struct TYPE_6__ {TYPE_2__* q; } ;
struct htb_class {int prio_activity; int prio; TYPE_3__ leaf; scalar_t__ level; } ;
struct TYPE_4__ {int qlen; } ;
struct TYPE_5__ {TYPE_1__ q; } ;


 int WARN_ON (int) ;
 int htb_activate_prios (struct htb_sched*,struct htb_class*) ;

__attribute__((used)) static inline void htb_activate(struct htb_sched *q, struct htb_class *cl)
{
 WARN_ON(cl->level || !cl->leaf.q || !cl->leaf.q->q.qlen);

 if (!cl->prio_activity) {
  cl->prio_activity = 1 << cl->prio;
  htb_activate_prios(q, cl);
 }
}
