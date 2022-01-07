
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {int mask; int value; } ;
struct bpf_reg_state {unsigned long long umax_value; unsigned long long umin_value; scalar_t__ smin_value; scalar_t__ smax_value; TYPE_1__ var_off; } ;
typedef scalar_t__ s64 ;
typedef scalar_t__ s32 ;
 scalar_t__ S32_MAX ;
 scalar_t__ S32_MIN ;
 scalar_t__ __is_pointer_value (int,struct bpf_reg_state*) ;
 int coerce_reg_to_size (struct bpf_reg_state*,int) ;
 int tnum_equals_const (TYPE_1__,int) ;
 int tnum_is_const (TYPE_1__) ;

__attribute__((used)) static int is_branch_taken(struct bpf_reg_state *reg, u64 val, u8 opcode,
      bool is_jmp32)
{
 struct bpf_reg_state reg_lo;
 s64 sval;

 if (__is_pointer_value(0, reg))
  return -1;

 if (is_jmp32) {
  reg_lo = *reg;
  reg = &reg_lo;




  coerce_reg_to_size(reg, 4);
  if ((reg->umax_value ^ reg->umin_value) &
      (1ULL << 31)) {
   reg->smin_value = S32_MIN;
   reg->smax_value = S32_MAX;
  }
  reg->smin_value = (s64)(s32)reg->smin_value;
  reg->smax_value = (s64)(s32)reg->smax_value;

  val = (u32)val;
  sval = (s64)(s32)val;
 } else {
  sval = (s64)val;
 }

 switch (opcode) {
 case 138:
  if (tnum_is_const(reg->var_off))
   return !!tnum_equals_const(reg->var_off, val);
  break;
 case 133:
  if (tnum_is_const(reg->var_off))
   return !tnum_equals_const(reg->var_off, val);
  break;
 case 132:
  if ((~reg->var_off.mask & reg->var_off.value) & val)
   return 1;
  if (!((reg->var_off.mask | reg->var_off.value) & val))
   return 0;
  break;
 case 136:
  if (reg->umin_value > val)
   return 1;
  else if (reg->umax_value <= val)
   return 0;
  break;
 case 130:
  if (reg->smin_value > sval)
   return 1;
  else if (reg->smax_value < sval)
   return 0;
  break;
 case 134:
  if (reg->umax_value < val)
   return 1;
  else if (reg->umin_value >= val)
   return 0;
  break;
 case 128:
  if (reg->smax_value < sval)
   return 1;
  else if (reg->smin_value >= sval)
   return 0;
  break;
 case 137:
  if (reg->umin_value >= val)
   return 1;
  else if (reg->umax_value < val)
   return 0;
  break;
 case 131:
  if (reg->smin_value >= sval)
   return 1;
  else if (reg->smax_value < sval)
   return 0;
  break;
 case 135:
  if (reg->umax_value <= val)
   return 1;
  else if (reg->umin_value > val)
   return 0;
  break;
 case 129:
  if (reg->smax_value <= sval)
   return 1;
  else if (reg->smin_value > sval)
   return 0;
  break;
 }

 return -1;
}
