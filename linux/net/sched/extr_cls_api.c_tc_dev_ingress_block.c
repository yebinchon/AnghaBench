
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcf_block {int dummy; } ;
struct net_device {int dummy; } ;
struct Qdisc_class_ops {struct tcf_block* (* tcf_block ) (struct Qdisc*,int ,int *) ;} ;
struct Qdisc {TYPE_1__* ops; } ;
struct TYPE_4__ {struct Qdisc* qdisc_sleeping; } ;
struct TYPE_3__ {struct Qdisc_class_ops* cl_ops; } ;


 int TC_H_MIN_INGRESS ;
 TYPE_2__* dev_ingress_queue (struct net_device*) ;
 struct tcf_block* stub1 (struct Qdisc*,int ,int *) ;

__attribute__((used)) static struct tcf_block *tc_dev_ingress_block(struct net_device *dev)
{
 const struct Qdisc_class_ops *cops;
 struct Qdisc *qdisc;

 if (!dev_ingress_queue(dev))
  return ((void*)0);

 qdisc = dev_ingress_queue(dev)->qdisc_sleeping;
 if (!qdisc)
  return ((void*)0);

 cops = qdisc->ops->cl_ops;
 if (!cops)
  return ((void*)0);

 if (!cops->tcf_block)
  return ((void*)0);

 return cops->tcf_block(qdisc, TC_H_MIN_INGRESS, ((void*)0));
}
