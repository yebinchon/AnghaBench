
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_proto {TYPE_1__* chain; } ;
struct tcf_block {int dummy; } ;
struct tc_cls_matchall_offload {unsigned long cookie; int command; int common; } ;
struct netlink_ext_ack {int dummy; } ;
struct cls_mall_head {int in_hw_count; int flags; } ;
struct TYPE_2__ {struct tcf_block* block; } ;


 int TC_CLSMATCHALL_DESTROY ;
 int TC_SETUP_CLSMATCHALL ;
 int tc_cls_common_offload_init (int *,struct tcf_proto*,int ,struct netlink_ext_ack*) ;
 int tc_setup_cb_destroy (struct tcf_block*,struct tcf_proto*,int ,struct tc_cls_matchall_offload*,int,int *,int *,int) ;

__attribute__((used)) static void mall_destroy_hw_filter(struct tcf_proto *tp,
       struct cls_mall_head *head,
       unsigned long cookie,
       struct netlink_ext_ack *extack)
{
 struct tc_cls_matchall_offload cls_mall = {};
 struct tcf_block *block = tp->chain->block;

 tc_cls_common_offload_init(&cls_mall.common, tp, head->flags, extack);
 cls_mall.command = TC_CLSMATCHALL_DESTROY;
 cls_mall.cookie = cookie;

 tc_setup_cb_destroy(block, tp, TC_SETUP_CLSMATCHALL, &cls_mall, 0,
       &head->flags, &head->in_hw_count, 1);
}
