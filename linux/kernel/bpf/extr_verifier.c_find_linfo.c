
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct bpf_verifier_env {struct bpf_prog* prog; } ;
struct bpf_prog {scalar_t__ len; TYPE_1__* aux; } ;
struct bpf_line_info {scalar_t__ insn_off; } ;
struct TYPE_2__ {scalar_t__ nr_linfo; struct bpf_line_info* linfo; } ;



__attribute__((used)) static const struct bpf_line_info *
find_linfo(const struct bpf_verifier_env *env, u32 insn_off)
{
 const struct bpf_line_info *linfo;
 const struct bpf_prog *prog;
 u32 i, nr_linfo;

 prog = env->prog;
 nr_linfo = prog->aux->nr_linfo;

 if (!nr_linfo || insn_off >= prog->len)
  return ((void*)0);

 linfo = prog->aux->linfo;
 for (i = 1; i < nr_linfo; i++)
  if (insn_off < linfo[i].insn_off)
   break;

 return &linfo[i - 1];
}
