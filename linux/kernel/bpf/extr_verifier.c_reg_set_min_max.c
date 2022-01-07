
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_7__ {int value; int mask; } ;
struct bpf_reg_state {void* smax_value; void* smin_value; void* umax_value; void* umin_value; TYPE_1__ var_off; } ;
typedef int s64 ;
typedef scalar_t__ s32 ;
 scalar_t__ __is_pointer_value (int,struct bpf_reg_state*) ;
 int __mark_reg_known (struct bpf_reg_state*,int) ;
 int __reg_bound_offset (struct bpf_reg_state*) ;
 int __reg_deduce_bounds (struct bpf_reg_state*) ;
 int __update_reg_bounds (struct bpf_reg_state*) ;
 int cmp_val_with_extended_s64 (int,struct bpf_reg_state*) ;
 int gen_hi_max (TYPE_1__) ;
 int gen_hi_min (TYPE_1__) ;
 int is_power_of_2 (int) ;
 void* max (void*,int) ;
 void* min (void*,int) ;
 TYPE_1__ tnum_and (TYPE_1__,int ) ;
 int tnum_const (int) ;
 TYPE_1__ tnum_or (TYPE_1__,int ) ;

__attribute__((used)) static void reg_set_min_max(struct bpf_reg_state *true_reg,
       struct bpf_reg_state *false_reg, u64 val,
       u8 opcode, bool is_jmp32)
{
 s64 sval;







 if (__is_pointer_value(0, false_reg))
  return;

 val = is_jmp32 ? (u32)val : val;
 sval = is_jmp32 ? (s64)(s32)val : (s64)val;

 switch (opcode) {
 case 138:
 case 133:
 {
  struct bpf_reg_state *reg =
   opcode == 138 ? true_reg : false_reg;





  if (is_jmp32) {
   u64 old_v = reg->var_off.value;
   u64 hi_mask = ~0xffffffffULL;

   reg->var_off.value = (old_v & hi_mask) | val;
   reg->var_off.mask &= hi_mask;
  } else {
   __mark_reg_known(reg, val);
  }
  break;
 }
 case 132:
  false_reg->var_off = tnum_and(false_reg->var_off,
           tnum_const(~val));
  if (is_power_of_2(val))
   true_reg->var_off = tnum_or(true_reg->var_off,
          tnum_const(val));
  break;
 case 137:
 case 136:
 {
  u64 false_umax = opcode == 136 ? val : val - 1;
  u64 true_umin = opcode == 136 ? val + 1 : val;

  if (is_jmp32) {
   false_umax += gen_hi_max(false_reg->var_off);
   true_umin += gen_hi_min(true_reg->var_off);
  }
  false_reg->umax_value = min(false_reg->umax_value, false_umax);
  true_reg->umin_value = max(true_reg->umin_value, true_umin);
  break;
 }
 case 131:
 case 130:
 {
  s64 false_smax = opcode == 130 ? sval : sval - 1;
  s64 true_smin = opcode == 130 ? sval + 1 : sval;




  if (is_jmp32 && !cmp_val_with_extended_s64(sval, false_reg))
   break;
  false_reg->smax_value = min(false_reg->smax_value, false_smax);
  true_reg->smin_value = max(true_reg->smin_value, true_smin);
  break;
 }
 case 135:
 case 134:
 {
  u64 false_umin = opcode == 134 ? val : val + 1;
  u64 true_umax = opcode == 134 ? val - 1 : val;

  if (is_jmp32) {
   false_umin += gen_hi_min(false_reg->var_off);
   true_umax += gen_hi_max(true_reg->var_off);
  }
  false_reg->umin_value = max(false_reg->umin_value, false_umin);
  true_reg->umax_value = min(true_reg->umax_value, true_umax);
  break;
 }
 case 129:
 case 128:
 {
  s64 false_smin = opcode == 128 ? sval : sval + 1;
  s64 true_smax = opcode == 128 ? sval - 1 : sval;

  if (is_jmp32 && !cmp_val_with_extended_s64(sval, false_reg))
   break;
  false_reg->smin_value = max(false_reg->smin_value, false_smin);
  true_reg->smax_value = min(true_reg->smax_value, true_smax);
  break;
 }
 default:
  break;
 }

 __reg_deduce_bounds(false_reg);
 __reg_deduce_bounds(true_reg);

 __reg_bound_offset(false_reg);
 __reg_bound_offset(true_reg);




 __update_reg_bounds(false_reg);
 __update_reg_bounds(true_reg);
}
