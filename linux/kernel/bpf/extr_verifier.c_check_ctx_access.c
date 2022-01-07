
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bpf_verifier_env {TYPE_4__* prog; TYPE_2__* insn_aux_data; TYPE_1__* ops; } ;
struct bpf_insn_access_aux {int reg_type; int ctx_field_size; } ;
typedef enum bpf_reg_type { ____Placeholder_bpf_reg_type } bpf_reg_type ;
typedef enum bpf_access_type { ____Placeholder_bpf_access_type } bpf_access_type ;
struct TYPE_8__ {TYPE_3__* aux; } ;
struct TYPE_7__ {int max_ctx_offset; } ;
struct TYPE_6__ {int ctx_field_size; } ;
struct TYPE_5__ {scalar_t__ (* is_valid_access ) (int,int,int,TYPE_4__*,struct bpf_insn_access_aux*) ;} ;


 int EACCES ;
 scalar_t__ stub1 (int,int,int,TYPE_4__*,struct bpf_insn_access_aux*) ;
 int verbose (struct bpf_verifier_env*,char*,int,int) ;

__attribute__((used)) static int check_ctx_access(struct bpf_verifier_env *env, int insn_idx, int off, int size,
       enum bpf_access_type t, enum bpf_reg_type *reg_type)
{
 struct bpf_insn_access_aux info = {
  .reg_type = *reg_type,
 };

 if (env->ops->is_valid_access &&
     env->ops->is_valid_access(off, size, t, env->prog, &info)) {







  *reg_type = info.reg_type;

  env->insn_aux_data[insn_idx].ctx_field_size = info.ctx_field_size;

  if (env->prog->aux->max_ctx_offset < off + size)
   env->prog->aux->max_ctx_offset = off + size;
  return 0;
 }

 verbose(env, "invalid bpf_context access off=%d size=%d\n", off, size);
 return -EACCES;
}
