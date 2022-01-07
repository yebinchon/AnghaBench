
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcf_proto {TYPE_2__* chain; } ;
struct tcf_block {int dummy; } ;
struct tc_u_knode {int in_hw_count; int flags; int handle; } ;
struct TYPE_3__ {int handle; } ;
struct tc_cls_u32_offload {TYPE_1__ knode; int command; int common; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_4__ {struct tcf_block* block; } ;


 int TC_CLSU32_DELETE_KNODE ;
 int TC_SETUP_CLSU32 ;
 int tc_cls_common_offload_init (int *,struct tcf_proto*,int ,struct netlink_ext_ack*) ;
 int tc_setup_cb_destroy (struct tcf_block*,struct tcf_proto*,int ,struct tc_cls_u32_offload*,int,int *,int *,int) ;

__attribute__((used)) static void u32_remove_hw_knode(struct tcf_proto *tp, struct tc_u_knode *n,
    struct netlink_ext_ack *extack)
{
 struct tcf_block *block = tp->chain->block;
 struct tc_cls_u32_offload cls_u32 = {};

 tc_cls_common_offload_init(&cls_u32.common, tp, n->flags, extack);
 cls_u32.command = TC_CLSU32_DELETE_KNODE;
 cls_u32.knode.handle = n->handle;

 tc_setup_cb_destroy(block, tp, TC_SETUP_CLSU32, &cls_u32, 0,
       &n->flags, &n->in_hw_count, 1);
}
