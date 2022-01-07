
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_chain {int index; struct tcf_block* block; } ;
struct tcf_block {int dummy; } ;
struct TYPE_2__ {int chain_index; } ;
struct flow_cls_offload {unsigned long cookie; int command; TYPE_1__ common; } ;
struct fl_flow_tmplt {int dummy; } ;


 int FLOW_CLS_TMPLT_DESTROY ;
 int TC_SETUP_CLSFLOWER ;
 int tc_setup_cb_call (struct tcf_block*,int ,struct flow_cls_offload*,int,int) ;

__attribute__((used)) static void fl_hw_destroy_tmplt(struct tcf_chain *chain,
    struct fl_flow_tmplt *tmplt)
{
 struct flow_cls_offload cls_flower = {};
 struct tcf_block *block = chain->block;

 cls_flower.common.chain_index = chain->index;
 cls_flower.command = FLOW_CLS_TMPLT_DESTROY;
 cls_flower.cookie = (unsigned long) tmplt;

 tc_setup_cb_call(block, TC_SETUP_CLSFLOWER, &cls_flower, 0, 1);
}
