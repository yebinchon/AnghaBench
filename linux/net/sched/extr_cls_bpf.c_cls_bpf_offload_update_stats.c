
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_proto {TYPE_1__* chain; } ;
struct tcf_block {int dummy; } ;
struct tc_cls_bpf_offload {int exts_integrated; int name; int prog; int * exts; int command; int common; } ;
struct cls_bpf_prog {int exts_integrated; int bpf_name; int filter; int exts; int gen_flags; } ;
struct TYPE_2__ {struct tcf_block* block; } ;


 int TC_CLSBPF_STATS ;
 int TC_SETUP_CLSBPF ;
 int tc_cls_common_offload_init (int *,struct tcf_proto*,int ,int *) ;
 int tc_setup_cb_call (struct tcf_block*,int ,struct tc_cls_bpf_offload*,int,int) ;

__attribute__((used)) static void cls_bpf_offload_update_stats(struct tcf_proto *tp,
      struct cls_bpf_prog *prog)
{
 struct tcf_block *block = tp->chain->block;
 struct tc_cls_bpf_offload cls_bpf = {};

 tc_cls_common_offload_init(&cls_bpf.common, tp, prog->gen_flags, ((void*)0));
 cls_bpf.command = TC_CLSBPF_STATS;
 cls_bpf.exts = &prog->exts;
 cls_bpf.prog = prog->filter;
 cls_bpf.name = prog->bpf_name;
 cls_bpf.exts_integrated = prog->exts_integrated;

 tc_setup_cb_call(block, TC_SETUP_CLSBPF, &cls_bpf, 0, 1);
}
