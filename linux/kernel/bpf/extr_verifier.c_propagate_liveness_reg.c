
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct bpf_verifier_env {int dummy; } ;
struct bpf_reg_state {scalar_t__ live; } ;


 scalar_t__ REG_LIVE_READ ;
 scalar_t__ REG_LIVE_READ64 ;
 int mark_reg_read (struct bpf_verifier_env*,struct bpf_reg_state*,struct bpf_reg_state*,scalar_t__) ;

__attribute__((used)) static int propagate_liveness_reg(struct bpf_verifier_env *env,
      struct bpf_reg_state *reg,
      struct bpf_reg_state *parent_reg)
{
 u8 parent_flag = parent_reg->live & REG_LIVE_READ;
 u8 flag = reg->live & REG_LIVE_READ;
 int err;





 if (parent_flag == REG_LIVE_READ64 ||

     !flag ||

     parent_flag == flag)
  return 0;

 err = mark_reg_read(env, reg, parent_reg, flag);
 if (err)
  return err;

 return flag;
}
