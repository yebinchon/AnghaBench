
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tn_buf ;
struct bpf_verifier_env {int dummy; } ;
struct bpf_reg_state {int var_off; } ;


 int EACCES ;
 int MAX_BPF_STACK ;
 int tnum_is_const (int ) ;
 int tnum_strn (char*,int,int ) ;
 int verbose (struct bpf_verifier_env*,char*,...) ;

__attribute__((used)) static int check_stack_access(struct bpf_verifier_env *env,
         const struct bpf_reg_state *reg,
         int off, int size)
{




 if (!tnum_is_const(reg->var_off)) {
  char tn_buf[48];

  tnum_strn(tn_buf, sizeof(tn_buf), reg->var_off);
  verbose(env, "variable stack access var_off=%s off=%d size=%d\n",
   tn_buf, off, size);
  return -EACCES;
 }

 if (off >= 0 || off < -MAX_BPF_STACK) {
  verbose(env, "invalid stack off=%d size=%d\n", off, size);
  return -EACCES;
 }

 return 0;
}
