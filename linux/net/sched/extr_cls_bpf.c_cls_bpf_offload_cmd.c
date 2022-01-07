
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_proto {TYPE_1__* chain; } ;
struct tcf_block {int dummy; } ;
struct tc_cls_bpf_offload {int exts_integrated; int name; int * oldprog; int * prog; int * exts; int command; int common; } ;
struct netlink_ext_ack {int dummy; } ;
struct cls_bpf_prog {int gen_flags; int in_hw_count; int exts_integrated; int bpf_name; int * filter; int exts; } ;
struct TYPE_2__ {struct tcf_block* block; } ;


 int EINVAL ;
 int TCA_CLS_FLAGS_IN_HW ;
 int TC_CLSBPF_OFFLOAD ;
 int TC_SETUP_CLSBPF ;
 int tc_cls_common_offload_init (int *,struct tcf_proto*,int,struct netlink_ext_ack*) ;
 int tc_setup_cb_add (struct tcf_block*,struct tcf_proto*,int ,struct tc_cls_bpf_offload*,int,int*,int *,int) ;
 int tc_setup_cb_destroy (struct tcf_block*,struct tcf_proto*,int ,struct tc_cls_bpf_offload*,int,int*,int *,int) ;
 int tc_setup_cb_replace (struct tcf_block*,struct tcf_proto*,int ,struct tc_cls_bpf_offload*,int,int*,int *,int*,int *,int) ;
 scalar_t__ tc_skip_sw (int) ;

__attribute__((used)) static int cls_bpf_offload_cmd(struct tcf_proto *tp, struct cls_bpf_prog *prog,
          struct cls_bpf_prog *oldprog,
          struct netlink_ext_ack *extack)
{
 struct tcf_block *block = tp->chain->block;
 struct tc_cls_bpf_offload cls_bpf = {};
 struct cls_bpf_prog *obj;
 bool skip_sw;
 int err;

 skip_sw = prog && tc_skip_sw(prog->gen_flags);
 obj = prog ?: oldprog;

 tc_cls_common_offload_init(&cls_bpf.common, tp, obj->gen_flags, extack);
 cls_bpf.command = TC_CLSBPF_OFFLOAD;
 cls_bpf.exts = &obj->exts;
 cls_bpf.prog = prog ? prog->filter : ((void*)0);
 cls_bpf.oldprog = oldprog ? oldprog->filter : ((void*)0);
 cls_bpf.name = obj->bpf_name;
 cls_bpf.exts_integrated = obj->exts_integrated;

 if (oldprog && prog)
  err = tc_setup_cb_replace(block, tp, TC_SETUP_CLSBPF, &cls_bpf,
       skip_sw, &oldprog->gen_flags,
       &oldprog->in_hw_count,
       &prog->gen_flags, &prog->in_hw_count,
       1);
 else if (prog)
  err = tc_setup_cb_add(block, tp, TC_SETUP_CLSBPF, &cls_bpf,
          skip_sw, &prog->gen_flags,
          &prog->in_hw_count, 1);
 else
  err = tc_setup_cb_destroy(block, tp, TC_SETUP_CLSBPF, &cls_bpf,
       skip_sw, &oldprog->gen_flags,
       &oldprog->in_hw_count, 1);

 if (prog && err) {
  cls_bpf_offload_cmd(tp, oldprog, prog, extack);
  return err;
 }

 if (prog && skip_sw && !(prog->gen_flags & TCA_CLS_FLAGS_IN_HW))
  return -EINVAL;

 return 0;
}
