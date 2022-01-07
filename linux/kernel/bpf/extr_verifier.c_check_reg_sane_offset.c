
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_verifier_env {int dummy; } ;
struct TYPE_2__ {int value; } ;
struct bpf_reg_state {int off; int smin_value; TYPE_1__ var_off; } ;
typedef int s64 ;
typedef enum bpf_reg_type { ____Placeholder_bpf_reg_type } bpf_reg_type ;


 int BPF_MAX_VAR_OFF ;
 int S64_MIN ;
 int * reg_type_str ;
 int tnum_is_const (TYPE_1__) ;
 int verbose (struct bpf_verifier_env*,char*,int ,...) ;

__attribute__((used)) static bool check_reg_sane_offset(struct bpf_verifier_env *env,
      const struct bpf_reg_state *reg,
      enum bpf_reg_type type)
{
 bool known = tnum_is_const(reg->var_off);
 s64 val = reg->var_off.value;
 s64 smin = reg->smin_value;

 if (known && (val >= BPF_MAX_VAR_OFF || val <= -BPF_MAX_VAR_OFF)) {
  verbose(env, "math between %s pointer and %lld is not allowed\n",
   reg_type_str[type], val);
  return 0;
 }

 if (reg->off >= BPF_MAX_VAR_OFF || reg->off <= -BPF_MAX_VAR_OFF) {
  verbose(env, "%s pointer offset %d is not allowed\n",
   reg_type_str[type], reg->off);
  return 0;
 }

 if (smin == S64_MIN) {
  verbose(env, "math between %s pointer and register with unbounded min value is not allowed\n",
   reg_type_str[type]);
  return 0;
 }

 if (smin >= BPF_MAX_VAR_OFF || smin <= -BPF_MAX_VAR_OFF) {
  verbose(env, "value %lld makes %s pointer be out of bounds\n",
   smin, reg_type_str[type]);
  return 0;
 }

 return 1;
}
