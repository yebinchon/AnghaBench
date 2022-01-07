
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tcf_proto {TYPE_1__* chain; } ;
struct tcf_block {int dummy; } ;
struct tc_u_hnode {int prio; int handle; int divisor; } ;
struct TYPE_4__ {int prio; int handle; int divisor; } ;
struct tc_cls_u32_offload {TYPE_2__ hnode; int command; int common; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_3__ {struct tcf_block* block; } ;


 int EINVAL ;
 int TC_CLSU32_NEW_HNODE ;
 int TC_SETUP_CLSU32 ;
 int tc_cls_common_offload_init (int *,struct tcf_proto*,int ,struct netlink_ext_ack*) ;
 int tc_setup_cb_call (struct tcf_block*,int ,struct tc_cls_u32_offload*,int,int) ;
 int tc_skip_sw (int ) ;
 int u32_clear_hw_hnode (struct tcf_proto*,struct tc_u_hnode*,int *) ;

__attribute__((used)) static int u32_replace_hw_hnode(struct tcf_proto *tp, struct tc_u_hnode *h,
    u32 flags, struct netlink_ext_ack *extack)
{
 struct tcf_block *block = tp->chain->block;
 struct tc_cls_u32_offload cls_u32 = {};
 bool skip_sw = tc_skip_sw(flags);
 bool offloaded = 0;
 int err;

 tc_cls_common_offload_init(&cls_u32.common, tp, flags, extack);
 cls_u32.command = TC_CLSU32_NEW_HNODE;
 cls_u32.hnode.divisor = h->divisor;
 cls_u32.hnode.handle = h->handle;
 cls_u32.hnode.prio = h->prio;

 err = tc_setup_cb_call(block, TC_SETUP_CLSU32, &cls_u32, skip_sw, 1);
 if (err < 0) {
  u32_clear_hw_hnode(tp, h, ((void*)0));
  return err;
 } else if (err > 0) {
  offloaded = 1;
 }

 if (skip_sw && !offloaded)
  return -EINVAL;

 return 0;
}
