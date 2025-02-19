
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tn_buf ;
struct bpf_verifier_env {TYPE_2__* prog; } ;
struct TYPE_7__ {scalar_t__ value; } ;
struct bpf_reg_state {TYPE_3__ var_off; } ;
struct TYPE_6__ {TYPE_1__* aux; } ;
struct TYPE_5__ {int max_tp_access; } ;


 int EACCES ;
 int tnum_is_const (TYPE_3__) ;
 int tnum_strn (char*,int,TYPE_3__) ;
 int verbose (struct bpf_verifier_env*,char*,int,int,...) ;

__attribute__((used)) static int check_tp_buffer_access(struct bpf_verifier_env *env,
      const struct bpf_reg_state *reg,
      int regno, int off, int size)
{
 if (off < 0) {
  verbose(env,
   "R%d invalid tracepoint buffer access: off=%d, size=%d",
   regno, off, size);
  return -EACCES;
 }
 if (!tnum_is_const(reg->var_off) || reg->var_off.value) {
  char tn_buf[48];

  tnum_strn(tn_buf, sizeof(tn_buf), reg->var_off);
  verbose(env,
   "R%d invalid variable buffer offset: off=%d, var_off=%s",
   regno, off, tn_buf);
  return -EACCES;
 }
 if (off + size > env->prog->aux->max_tp_access)
  env->prog->aux->max_tp_access = off + size;

 return 0;
}
