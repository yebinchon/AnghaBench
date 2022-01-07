
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_block {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct cbq_class {struct tcf_block* block; } ;
struct cbq_sched_data {struct cbq_class link; } ;
struct Qdisc {int dummy; } ;


 struct cbq_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static struct tcf_block *cbq_tcf_block(struct Qdisc *sch, unsigned long arg,
           struct netlink_ext_ack *extack)
{
 struct cbq_sched_data *q = qdisc_priv(sch);
 struct cbq_class *cl = (struct cbq_class *)arg;

 if (cl == ((void*)0))
  cl = &q->link;

 return cl->block;
}
