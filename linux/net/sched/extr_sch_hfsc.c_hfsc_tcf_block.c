
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_block {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct hfsc_class {struct tcf_block* block; } ;
struct hfsc_sched {struct hfsc_class root; } ;
struct Qdisc {int dummy; } ;


 struct hfsc_sched* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static struct tcf_block *hfsc_tcf_block(struct Qdisc *sch, unsigned long arg,
     struct netlink_ext_ack *extack)
{
 struct hfsc_sched *q = qdisc_priv(sch);
 struct hfsc_class *cl = (struct hfsc_class *)arg;

 if (cl == ((void*)0))
  cl = &q->root;

 return cl->block;
}
