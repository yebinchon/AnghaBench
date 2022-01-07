
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_proto {TYPE_1__* chain; } ;
struct tcf_block {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct flow_cls_offload {unsigned long cookie; int command; int common; } ;
struct cls_fl_filter {int in_hw_count; int flags; } ;
struct TYPE_2__ {struct tcf_block* block; } ;


 int FLOW_CLS_DESTROY ;
 int TC_SETUP_CLSFLOWER ;
 int tc_cls_common_offload_init (int *,struct tcf_proto*,int ,struct netlink_ext_ack*) ;
 int tc_setup_cb_destroy (struct tcf_block*,struct tcf_proto*,int ,struct flow_cls_offload*,int,int *,int *,int) ;

__attribute__((used)) static void fl_hw_destroy_filter(struct tcf_proto *tp, struct cls_fl_filter *f,
     bool rtnl_held, struct netlink_ext_ack *extack)
{
 struct tcf_block *block = tp->chain->block;
 struct flow_cls_offload cls_flower = {};

 tc_cls_common_offload_init(&cls_flower.common, tp, f->flags, extack);
 cls_flower.command = FLOW_CLS_DESTROY;
 cls_flower.cookie = (unsigned long) f;

 tc_setup_cb_destroy(block, tp, TC_SETUP_CLSFLOWER, &cls_flower, 0,
       &f->flags, &f->in_hw_count, rtnl_held);

}
