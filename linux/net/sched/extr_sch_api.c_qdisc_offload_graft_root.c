
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_root_qopt_offload {int ingress; int handle; int command; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct Qdisc {int flags; int handle; } ;


 int TCQ_F_INGRESS ;
 int TC_ROOT_GRAFT ;
 int TC_SETUP_ROOT_QDISC ;
 int qdisc_offload_graft_helper (struct net_device*,int *,struct Qdisc*,struct Qdisc*,int ,struct tc_root_qopt_offload*,struct netlink_ext_ack*) ;

__attribute__((used)) static void qdisc_offload_graft_root(struct net_device *dev,
         struct Qdisc *new, struct Qdisc *old,
         struct netlink_ext_ack *extack)
{
 struct tc_root_qopt_offload graft_offload = {
  .command = TC_ROOT_GRAFT,
  .handle = new ? new->handle : 0,
  .ingress = (new && new->flags & TCQ_F_INGRESS) ||
      (old && old->flags & TCQ_F_INGRESS),
 };

 qdisc_offload_graft_helper(dev, ((void*)0), new, old,
       TC_SETUP_ROOT_QDISC, &graft_offload, extack);
}
