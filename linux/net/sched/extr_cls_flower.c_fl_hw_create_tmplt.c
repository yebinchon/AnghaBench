
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tcf_chain {int index; struct tcf_block* block; } ;
struct tcf_block {int dummy; } ;
struct TYPE_5__ {int chain_index; } ;
struct flow_cls_offload {unsigned long cookie; TYPE_3__* rule; int command; TYPE_1__ common; } ;
struct fl_flow_tmplt {int dummy_key; int mask; int dissector; } ;
struct TYPE_6__ {int * key; int * mask; int * dissector; } ;
struct TYPE_7__ {TYPE_2__ match; } ;


 int ENOMEM ;
 int FLOW_CLS_TMPLT_CREATE ;
 int TC_SETUP_CLSFLOWER ;
 TYPE_3__* flow_rule_alloc (int ) ;
 int kfree (TYPE_3__*) ;
 int tc_setup_cb_call (struct tcf_block*,int ,struct flow_cls_offload*,int,int) ;

__attribute__((used)) static int fl_hw_create_tmplt(struct tcf_chain *chain,
         struct fl_flow_tmplt *tmplt)
{
 struct flow_cls_offload cls_flower = {};
 struct tcf_block *block = chain->block;

 cls_flower.rule = flow_rule_alloc(0);
 if (!cls_flower.rule)
  return -ENOMEM;

 cls_flower.common.chain_index = chain->index;
 cls_flower.command = FLOW_CLS_TMPLT_CREATE;
 cls_flower.cookie = (unsigned long) tmplt;
 cls_flower.rule->match.dissector = &tmplt->dissector;
 cls_flower.rule->match.mask = &tmplt->mask;
 cls_flower.rule->match.key = &tmplt->dummy_key;




 tc_setup_cb_call(block, TC_SETUP_CLSFLOWER, &cls_flower, 0, 1);
 kfree(cls_flower.rule);

 return 0;
}
