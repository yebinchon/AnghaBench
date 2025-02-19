
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_block {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct htb_sched {struct tcf_block* block; } ;
struct htb_class {struct tcf_block* block; } ;
struct Qdisc {int dummy; } ;


 struct htb_sched* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static struct tcf_block *htb_tcf_block(struct Qdisc *sch, unsigned long arg,
           struct netlink_ext_ack *extack)
{
 struct htb_sched *q = qdisc_priv(sch);
 struct htb_class *cl = (struct htb_class *)arg;

 return cl ? cl->block : q->block;
}
