
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_3__ {int classid; } ;
struct TYPE_4__ {int ref; TYPE_1__ common; int * sock; int * vcc; int filter_list; int block; int * q; int list; } ;
struct atm_qdisc_data {int task; TYPE_2__ link; int flows; } ;
struct Qdisc {int handle; int dev_queue; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_add (int *,int *) ;
 int noop_qdisc ;
 int pfifo_qdisc_ops ;
 int pr_debug (char*,...) ;
 int * qdisc_create_dflt (int ,int *,int ,struct netlink_ext_ack*) ;
 struct atm_qdisc_data* qdisc_priv (struct Qdisc*) ;
 int sch_atm_dequeue ;
 int tasklet_init (int *,int ,unsigned long) ;
 int tcf_block_get (int *,int *,struct Qdisc*,struct netlink_ext_ack*) ;

__attribute__((used)) static int atm_tc_init(struct Qdisc *sch, struct nlattr *opt,
         struct netlink_ext_ack *extack)
{
 struct atm_qdisc_data *p = qdisc_priv(sch);
 int err;

 pr_debug("atm_tc_init(sch %p,[qdisc %p],opt %p)\n", sch, p, opt);
 INIT_LIST_HEAD(&p->flows);
 INIT_LIST_HEAD(&p->link.list);
 list_add(&p->link.list, &p->flows);
 p->link.q = qdisc_create_dflt(sch->dev_queue,
          &pfifo_qdisc_ops, sch->handle, extack);
 if (!p->link.q)
  p->link.q = &noop_qdisc;
 pr_debug("atm_tc_init: link (%p) qdisc %p\n", &p->link, p->link.q);

 err = tcf_block_get(&p->link.block, &p->link.filter_list, sch,
       extack);
 if (err)
  return err;

 p->link.vcc = ((void*)0);
 p->link.sock = ((void*)0);
 p->link.common.classid = sch->handle;
 p->link.ref = 1;
 tasklet_init(&p->task, sch_atm_dequeue, (unsigned long)sch);
 return 0;
}
