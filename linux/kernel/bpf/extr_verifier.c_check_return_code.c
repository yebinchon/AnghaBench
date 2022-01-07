
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tn_buf ;
struct tnum {int dummy; } ;
struct bpf_verifier_env {TYPE_1__* prog; } ;
struct bpf_reg_state {size_t type; struct tnum var_off; } ;
struct TYPE_2__ {int type; int enforce_expected_attach_type; int expected_attach_type; } ;


 int BPF_CGROUP_INET_EGRESS ;
 int BPF_CGROUP_UDP4_RECVMSG ;
 int BPF_CGROUP_UDP6_RECVMSG ;







 int BPF_REG_0 ;
 int EINVAL ;
 size_t SCALAR_VALUE ;
 struct bpf_reg_state* cur_regs (struct bpf_verifier_env*) ;
 char** reg_type_str ;
 scalar_t__ tnum_in (struct tnum,struct tnum) ;
 int tnum_is_unknown (struct tnum) ;
 struct tnum tnum_range (int,int) ;
 int tnum_strn (char*,int,struct tnum) ;
 struct tnum tnum_unknown ;
 int verbose (struct bpf_verifier_env*,char*,...) ;

__attribute__((used)) static int check_return_code(struct bpf_verifier_env *env)
{
 struct tnum enforce_attach_type_range = tnum_unknown;
 struct bpf_reg_state *reg;
 struct tnum range = tnum_range(0, 1);

 switch (env->prog->type) {
 case 130:
  if (env->prog->expected_attach_type == BPF_CGROUP_UDP4_RECVMSG ||
      env->prog->expected_attach_type == BPF_CGROUP_UDP6_RECVMSG)
   range = tnum_range(1, 1);
  break;
 case 133:
  if (env->prog->expected_attach_type == BPF_CGROUP_INET_EGRESS) {
   range = tnum_range(0, 3);
   enforce_attach_type_range = tnum_range(2, 3);
  }
  break;
 case 132:
 case 128:
 case 134:
 case 129:
 case 131:
  break;
 default:
  return 0;
 }

 reg = cur_regs(env) + BPF_REG_0;
 if (reg->type != SCALAR_VALUE) {
  verbose(env, "At program exit the register R0 is not a known value (%s)\n",
   reg_type_str[reg->type]);
  return -EINVAL;
 }

 if (!tnum_in(range, reg->var_off)) {
  char tn_buf[48];

  verbose(env, "At program exit the register R0 ");
  if (!tnum_is_unknown(reg->var_off)) {
   tnum_strn(tn_buf, sizeof(tn_buf), reg->var_off);
   verbose(env, "has value %s", tn_buf);
  } else {
   verbose(env, "has unknown scalar value");
  }
  tnum_strn(tn_buf, sizeof(tn_buf), range);
  verbose(env, " should have been in %s\n", tn_buf);
  return -EINVAL;
 }

 if (!tnum_is_unknown(enforce_attach_type_range) &&
     tnum_in(enforce_attach_type_range, reg->var_off))
  env->prog->enforce_expected_attach_type = 1;
 return 0;
}
