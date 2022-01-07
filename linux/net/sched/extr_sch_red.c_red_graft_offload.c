
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_red_qopt_offload {int command; int child_handle; int parent; int handle; } ;
struct netlink_ext_ack {int dummy; } ;
struct Qdisc {int handle; int parent; } ;


 int TC_RED_GRAFT ;
 int TC_SETUP_QDISC_RED ;
 int qdisc_dev (struct Qdisc*) ;
 int qdisc_offload_graft_helper (int ,struct Qdisc*,struct Qdisc*,struct Qdisc*,int ,struct tc_red_qopt_offload*,struct netlink_ext_ack*) ;

__attribute__((used)) static void red_graft_offload(struct Qdisc *sch,
         struct Qdisc *new, struct Qdisc *old,
         struct netlink_ext_ack *extack)
{
 struct tc_red_qopt_offload graft_offload = {
  .handle = sch->handle,
  .parent = sch->parent,
  .child_handle = new->handle,
  .command = TC_RED_GRAFT,
 };

 qdisc_offload_graft_helper(qdisc_dev(sch), sch, new, old,
       TC_SETUP_QDISC_RED, &graft_offload, extack);
}
