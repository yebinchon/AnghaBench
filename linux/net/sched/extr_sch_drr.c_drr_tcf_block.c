
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_block {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct drr_sched {struct tcf_block* block; } ;
struct Qdisc {int dummy; } ;


 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 struct drr_sched* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static struct tcf_block *drr_tcf_block(struct Qdisc *sch, unsigned long cl,
           struct netlink_ext_ack *extack)
{
 struct drr_sched *q = qdisc_priv(sch);

 if (cl) {
  NL_SET_ERR_MSG(extack, "DRR classid must be zero");
  return ((void*)0);
 }

 return q->block;
}
