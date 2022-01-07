
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bpf_verifier_env {TYPE_2__* prog; } ;
struct bpf_prog_offload {TYPE_4__* offdev; } ;
struct TYPE_8__ {TYPE_3__* ops; } ;
struct TYPE_7__ {int (* insn_hook ) (struct bpf_verifier_env*,int,int) ;} ;
struct TYPE_6__ {TYPE_1__* aux; } ;
struct TYPE_5__ {struct bpf_prog_offload* offload; } ;


 int ENODEV ;
 int bpf_devs_lock ;
 int down_read (int *) ;
 int stub1 (struct bpf_verifier_env*,int,int) ;
 int up_read (int *) ;

int bpf_prog_offload_verify_insn(struct bpf_verifier_env *env,
     int insn_idx, int prev_insn_idx)
{
 struct bpf_prog_offload *offload;
 int ret = -ENODEV;

 down_read(&bpf_devs_lock);
 offload = env->prog->aux->offload;
 if (offload)
  ret = offload->offdev->ops->insn_hook(env, insn_idx,
            prev_insn_idx);
 up_read(&bpf_devs_lock);

 return ret;
}
