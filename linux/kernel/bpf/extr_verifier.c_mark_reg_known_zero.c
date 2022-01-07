
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bpf_verifier_env {int dummy; } ;
struct bpf_reg_state {int dummy; } ;


 scalar_t__ MAX_BPF_REG ;
 scalar_t__ WARN_ON (int) ;
 int __mark_reg_known_zero (struct bpf_reg_state*) ;
 int __mark_reg_not_init (struct bpf_reg_state*) ;
 int verbose (struct bpf_verifier_env*,char*,scalar_t__) ;

__attribute__((used)) static void mark_reg_known_zero(struct bpf_verifier_env *env,
    struct bpf_reg_state *regs, u32 regno)
{
 if (WARN_ON(regno >= MAX_BPF_REG)) {
  verbose(env, "mark_reg_known_zero(regs, %u)\n", regno);

  for (regno = 0; regno < MAX_BPF_REG; regno++)
   __mark_reg_not_init(regs + regno);
  return;
 }
 __mark_reg_known_zero(regs + regno);
}
