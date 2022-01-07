
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tcf_proto {TYPE_1__* chain; } ;
struct tcf_block {int dummy; } ;
struct tc_cls_matchall_offload {unsigned long cookie; TYPE_2__* rule; int command; int common; } ;
struct netlink_ext_ack {int dummy; } ;
struct cls_mall_head {int flags; int in_hw_count; int exts; } ;
struct TYPE_5__ {int action; } ;
struct TYPE_4__ {struct tcf_block* block; } ;


 int EINVAL ;
 int ENOMEM ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int TCA_CLS_FLAGS_IN_HW ;
 int TC_CLSMATCHALL_REPLACE ;
 int TC_SETUP_CLSMATCHALL ;
 TYPE_2__* flow_rule_alloc (int ) ;
 int kfree (TYPE_2__*) ;
 int mall_destroy_hw_filter (struct tcf_proto*,struct cls_mall_head*,unsigned long,int *) ;
 int tc_cleanup_flow_action (int *) ;
 int tc_cls_common_offload_init (int *,struct tcf_proto*,int,struct netlink_ext_ack*) ;
 int tc_setup_cb_add (struct tcf_block*,struct tcf_proto*,int ,struct tc_cls_matchall_offload*,int,int*,int *,int) ;
 int tc_setup_flow_action (int *,int *,int) ;
 int tc_skip_sw (int) ;
 int tcf_exts_num_actions (int *) ;

__attribute__((used)) static int mall_replace_hw_filter(struct tcf_proto *tp,
      struct cls_mall_head *head,
      unsigned long cookie,
      struct netlink_ext_ack *extack)
{
 struct tc_cls_matchall_offload cls_mall = {};
 struct tcf_block *block = tp->chain->block;
 bool skip_sw = tc_skip_sw(head->flags);
 int err;

 cls_mall.rule = flow_rule_alloc(tcf_exts_num_actions(&head->exts));
 if (!cls_mall.rule)
  return -ENOMEM;

 tc_cls_common_offload_init(&cls_mall.common, tp, head->flags, extack);
 cls_mall.command = TC_CLSMATCHALL_REPLACE;
 cls_mall.cookie = cookie;

 err = tc_setup_flow_action(&cls_mall.rule->action, &head->exts, 1);
 if (err) {
  kfree(cls_mall.rule);
  mall_destroy_hw_filter(tp, head, cookie, ((void*)0));
  if (skip_sw)
   NL_SET_ERR_MSG_MOD(extack, "Failed to setup flow action");
  else
   err = 0;

  return err;
 }

 err = tc_setup_cb_add(block, tp, TC_SETUP_CLSMATCHALL, &cls_mall,
         skip_sw, &head->flags, &head->in_hw_count, 1);
 tc_cleanup_flow_action(&cls_mall.rule->action);
 kfree(cls_mall.rule);

 if (err) {
  mall_destroy_hw_filter(tp, head, cookie, ((void*)0));
  return err;
 }

 if (skip_sw && !(head->flags & TCA_CLS_FLAGS_IN_HW))
  return -EINVAL;

 return 0;
}
