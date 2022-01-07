
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct tcf_proto {TYPE_1__* chain; } ;
struct tcf_block {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct flow_cls_offload {unsigned long cookie; TYPE_5__* rule; int classid; int command; int common; } ;
struct TYPE_10__ {int classid; } ;
struct cls_fl_filter {int flags; int in_hw_count; int exts; TYPE_4__ res; int mkey; TYPE_2__* mask; } ;
struct TYPE_9__ {int * key; int * mask; int * dissector; } ;
struct TYPE_11__ {int action; TYPE_3__ match; } ;
struct TYPE_8__ {int key; int dissector; } ;
struct TYPE_7__ {struct tcf_block* block; } ;


 int EINVAL ;
 int ENOMEM ;
 int FLOW_CLS_REPLACE ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int TCA_CLS_FLAGS_IN_HW ;
 int TC_SETUP_CLSFLOWER ;
 int fl_hw_destroy_filter (struct tcf_proto*,struct cls_fl_filter*,int,int *) ;
 TYPE_5__* flow_rule_alloc (int ) ;
 int kfree (TYPE_5__*) ;
 int tc_cleanup_flow_action (int *) ;
 int tc_cls_common_offload_init (int *,struct tcf_proto*,int,struct netlink_ext_ack*) ;
 int tc_setup_cb_add (struct tcf_block*,struct tcf_proto*,int ,struct flow_cls_offload*,int,int*,int *,int) ;
 int tc_setup_flow_action (int *,int *,int) ;
 int tc_skip_sw (int) ;
 int tcf_exts_num_actions (int *) ;

__attribute__((used)) static int fl_hw_replace_filter(struct tcf_proto *tp,
    struct cls_fl_filter *f, bool rtnl_held,
    struct netlink_ext_ack *extack)
{
 struct tcf_block *block = tp->chain->block;
 struct flow_cls_offload cls_flower = {};
 bool skip_sw = tc_skip_sw(f->flags);
 int err = 0;

 cls_flower.rule = flow_rule_alloc(tcf_exts_num_actions(&f->exts));
 if (!cls_flower.rule)
  return -ENOMEM;

 tc_cls_common_offload_init(&cls_flower.common, tp, f->flags, extack);
 cls_flower.command = FLOW_CLS_REPLACE;
 cls_flower.cookie = (unsigned long) f;
 cls_flower.rule->match.dissector = &f->mask->dissector;
 cls_flower.rule->match.mask = &f->mask->key;
 cls_flower.rule->match.key = &f->mkey;
 cls_flower.classid = f->res.classid;

 err = tc_setup_flow_action(&cls_flower.rule->action, &f->exts,
       rtnl_held);
 if (err) {
  kfree(cls_flower.rule);
  if (skip_sw) {
   NL_SET_ERR_MSG_MOD(extack, "Failed to setup flow action");
   return err;
  }
  return 0;
 }

 err = tc_setup_cb_add(block, tp, TC_SETUP_CLSFLOWER, &cls_flower,
         skip_sw, &f->flags, &f->in_hw_count, rtnl_held);
 tc_cleanup_flow_action(&cls_flower.rule->action);
 kfree(cls_flower.rule);

 if (err) {
  fl_hw_destroy_filter(tp, f, rtnl_held, ((void*)0));
  return err;
 }

 if (skip_sw && !(f->flags & TCA_CLS_FLAGS_IN_HW))
  return -EINVAL;

 return 0;
}
