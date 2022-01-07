
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int miniq_ingress; } ;
struct TYPE_2__ {int * chain_head_change_priv; int chain_head_change; int binder_type; } ;
struct ingress_sched_data {TYPE_1__ block_info; int block; int miniqp; } ;
struct Qdisc {int dummy; } ;


 int FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS ;
 int clsact_chain_head_change ;
 int mini_qdisc_pair_init (int *,struct Qdisc*,int *) ;
 int net_inc_ingress_queue () ;
 struct net_device* qdisc_dev (struct Qdisc*) ;
 struct ingress_sched_data* qdisc_priv (struct Qdisc*) ;
 int tcf_block_get_ext (int *,struct Qdisc*,TYPE_1__*,struct netlink_ext_ack*) ;

__attribute__((used)) static int ingress_init(struct Qdisc *sch, struct nlattr *opt,
   struct netlink_ext_ack *extack)
{
 struct ingress_sched_data *q = qdisc_priv(sch);
 struct net_device *dev = qdisc_dev(sch);

 net_inc_ingress_queue();

 mini_qdisc_pair_init(&q->miniqp, sch, &dev->miniq_ingress);

 q->block_info.binder_type = FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS;
 q->block_info.chain_head_change = clsact_chain_head_change;
 q->block_info.chain_head_change_priv = &q->miniqp;

 return tcf_block_get_ext(&q->block, sch, &q->block_info, extack);
}
