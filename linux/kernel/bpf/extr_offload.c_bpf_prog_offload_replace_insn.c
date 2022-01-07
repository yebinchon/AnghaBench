
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct bpf_verifier_env {TYPE_2__* prog; } ;
struct bpf_prog_offload_ops {int (* replace_insn ) (struct bpf_verifier_env*,int ,struct bpf_insn*) ;} ;
struct bpf_prog_offload {int opt_failed; TYPE_3__* offdev; } ;
struct bpf_insn {int dummy; } ;
struct TYPE_6__ {struct bpf_prog_offload_ops* ops; } ;
struct TYPE_5__ {TYPE_1__* aux; } ;
struct TYPE_4__ {struct bpf_prog_offload* offload; } ;


 int EOPNOTSUPP ;
 int bpf_devs_lock ;
 int down_read (int *) ;
 int stub1 (struct bpf_verifier_env*,int ,struct bpf_insn*) ;
 int up_read (int *) ;

void
bpf_prog_offload_replace_insn(struct bpf_verifier_env *env, u32 off,
         struct bpf_insn *insn)
{
 const struct bpf_prog_offload_ops *ops;
 struct bpf_prog_offload *offload;
 int ret = -EOPNOTSUPP;

 down_read(&bpf_devs_lock);
 offload = env->prog->aux->offload;
 if (offload) {
  ops = offload->offdev->ops;
  if (!offload->opt_failed && ops->replace_insn)
   ret = ops->replace_insn(env, off, insn);
  offload->opt_failed |= ret;
 }
 up_read(&bpf_devs_lock);
}
