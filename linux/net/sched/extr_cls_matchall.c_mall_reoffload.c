
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tcf_proto {TYPE_1__* chain; int root; } ;
struct tcf_block {int dummy; } ;
struct tc_cls_matchall_offload {unsigned long cookie; TYPE_2__* rule; int command; int common; } ;
struct netlink_ext_ack {int dummy; } ;
struct cls_mall_head {int in_hw_count; int flags; int exts; } ;
typedef int flow_setup_cb_t ;
struct TYPE_5__ {int action; } ;
struct TYPE_4__ {struct tcf_block* block; } ;


 int ENOMEM ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int TC_CLSMATCHALL_DESTROY ;
 int TC_CLSMATCHALL_REPLACE ;
 int TC_SETUP_CLSMATCHALL ;
 TYPE_2__* flow_rule_alloc (int ) ;
 int kfree (TYPE_2__*) ;
 struct cls_mall_head* rtnl_dereference (int ) ;
 int tc_cleanup_flow_action (int *) ;
 int tc_cls_common_offload_init (int *,struct tcf_proto*,int ,struct netlink_ext_ack*) ;
 int tc_setup_cb_reoffload (struct tcf_block*,struct tcf_proto*,int,int *,int ,struct tc_cls_matchall_offload*,void*,int *,int *) ;
 int tc_setup_flow_action (int *,int *,int) ;
 scalar_t__ tc_skip_hw (int ) ;
 scalar_t__ tc_skip_sw (int ) ;
 int tcf_exts_num_actions (int *) ;

__attribute__((used)) static int mall_reoffload(struct tcf_proto *tp, bool add, flow_setup_cb_t *cb,
     void *cb_priv, struct netlink_ext_ack *extack)
{
 struct cls_mall_head *head = rtnl_dereference(tp->root);
 struct tc_cls_matchall_offload cls_mall = {};
 struct tcf_block *block = tp->chain->block;
 int err;

 if (tc_skip_hw(head->flags))
  return 0;

 cls_mall.rule = flow_rule_alloc(tcf_exts_num_actions(&head->exts));
 if (!cls_mall.rule)
  return -ENOMEM;

 tc_cls_common_offload_init(&cls_mall.common, tp, head->flags, extack);
 cls_mall.command = add ?
  TC_CLSMATCHALL_REPLACE : TC_CLSMATCHALL_DESTROY;
 cls_mall.cookie = (unsigned long)head;

 err = tc_setup_flow_action(&cls_mall.rule->action, &head->exts, 1);
 if (err) {
  kfree(cls_mall.rule);
  if (add && tc_skip_sw(head->flags)) {
   NL_SET_ERR_MSG_MOD(extack, "Failed to setup flow action");
   return err;
  }
  return 0;
 }

 err = tc_setup_cb_reoffload(block, tp, add, cb, TC_SETUP_CLSMATCHALL,
        &cls_mall, cb_priv, &head->flags,
        &head->in_hw_count);
 tc_cleanup_flow_action(&cls_mall.rule->action);
 kfree(cls_mall.rule);

 if (err)
  return err;

 return 0;
}
