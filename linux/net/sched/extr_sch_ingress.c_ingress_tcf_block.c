
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_block {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct ingress_sched_data {struct tcf_block* block; } ;
struct Qdisc {int dummy; } ;


 struct ingress_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static struct tcf_block *ingress_tcf_block(struct Qdisc *sch, unsigned long cl,
        struct netlink_ext_ack *extack)
{
 struct ingress_sched_data *q = qdisc_priv(sch);

 return q->block;
}
