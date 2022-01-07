
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct bpf_verifier_env {struct bpf_insn_aux_data* insn_aux_data; } ;
struct bpf_prog {size_t len; struct bpf_insn* insnsi; } ;
struct bpf_insn_aux_data {int seen; void* zext_dst; } ;
struct bpf_insn {int dummy; } ;


 int ENOMEM ;
 int array_size (size_t,int) ;
 void* insn_has_def32 (struct bpf_verifier_env*,struct bpf_insn*) ;
 int memcpy (struct bpf_insn_aux_data*,struct bpf_insn_aux_data*,int) ;
 int vfree (struct bpf_insn_aux_data*) ;
 struct bpf_insn_aux_data* vzalloc (int ) ;

__attribute__((used)) static int adjust_insn_aux_data(struct bpf_verifier_env *env,
    struct bpf_prog *new_prog, u32 off, u32 cnt)
{
 struct bpf_insn_aux_data *new_data, *old_data = env->insn_aux_data;
 struct bpf_insn *insn = new_prog->insnsi;
 u32 prog_len;
 int i;





 old_data[off].zext_dst = insn_has_def32(env, insn + off + cnt - 1);

 if (cnt == 1)
  return 0;
 prog_len = new_prog->len;
 new_data = vzalloc(array_size(prog_len,
          sizeof(struct bpf_insn_aux_data)));
 if (!new_data)
  return -ENOMEM;
 memcpy(new_data, old_data, sizeof(struct bpf_insn_aux_data) * off);
 memcpy(new_data + off + cnt - 1, old_data + off,
        sizeof(struct bpf_insn_aux_data) * (prog_len - off - cnt + 1));
 for (i = off; i < off + cnt - 1; i++) {
  new_data[i].seen = 1;
  new_data[i].zext_dst = insn_has_def32(env, insn + i);
 }
 env->insn_aux_data = new_data;
 vfree(old_data);
 return 0;
}
