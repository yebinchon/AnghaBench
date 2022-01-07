
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct bpf_verifier_env {TYPE_1__* insn_aux_data; int prog; } ;
struct bpf_prog {int dummy; } ;
struct bpf_insn {int dummy; } ;
struct TYPE_2__ {int orig_idx; } ;


 int ERANGE ;
 scalar_t__ IS_ERR (struct bpf_prog*) ;
 int PTR_ERR (struct bpf_prog*) ;
 scalar_t__ adjust_insn_aux_data (struct bpf_verifier_env*,struct bpf_prog*,size_t,size_t) ;
 int adjust_subprog_starts (struct bpf_verifier_env*,size_t,size_t) ;
 struct bpf_prog* bpf_patch_insn_single (int ,size_t,struct bpf_insn const*,size_t) ;
 int verbose (struct bpf_verifier_env*,char*,int ) ;

__attribute__((used)) static struct bpf_prog *bpf_patch_insn_data(struct bpf_verifier_env *env, u32 off,
         const struct bpf_insn *patch, u32 len)
{
 struct bpf_prog *new_prog;

 new_prog = bpf_patch_insn_single(env->prog, off, patch, len);
 if (IS_ERR(new_prog)) {
  if (PTR_ERR(new_prog) == -ERANGE)
   verbose(env,
    "insn %d cannot be patched due to 16-bit range\n",
    env->insn_aux_data[off].orig_idx);
  return ((void*)0);
 }
 if (adjust_insn_aux_data(env, new_prog, off, len))
  return ((void*)0);
 adjust_subprog_starts(env, off, len);
 return new_prog;
}
