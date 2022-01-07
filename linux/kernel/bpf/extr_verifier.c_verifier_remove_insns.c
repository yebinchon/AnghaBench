
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bpf_verifier_env {TYPE_1__* prog; struct bpf_insn_aux_data* insn_aux_data; } ;
struct bpf_insn_aux_data {int dummy; } ;
struct TYPE_2__ {unsigned int len; int aux; } ;


 int adjust_subprog_starts_after_remove (struct bpf_verifier_env*,int,int) ;
 int bpf_adj_linfo_after_remove (struct bpf_verifier_env*,int,int) ;
 scalar_t__ bpf_prog_is_dev_bound (int ) ;
 int bpf_prog_offload_remove_insns (struct bpf_verifier_env*,int,int) ;
 int bpf_remove_insns (TYPE_1__*,int,int) ;
 int memmove (struct bpf_insn_aux_data*,struct bpf_insn_aux_data*,int) ;

__attribute__((used)) static int verifier_remove_insns(struct bpf_verifier_env *env, u32 off, u32 cnt)
{
 struct bpf_insn_aux_data *aux_data = env->insn_aux_data;
 unsigned int orig_prog_len = env->prog->len;
 int err;

 if (bpf_prog_is_dev_bound(env->prog->aux))
  bpf_prog_offload_remove_insns(env, off, cnt);

 err = bpf_remove_insns(env->prog, off, cnt);
 if (err)
  return err;

 err = adjust_subprog_starts_after_remove(env, off, cnt);
 if (err)
  return err;

 err = bpf_adj_linfo_after_remove(env, off, cnt);
 if (err)
  return err;

 memmove(aux_data + off, aux_data + off + cnt,
  sizeof(*aux_data) * (orig_prog_len - off - cnt));

 return 0;
}
