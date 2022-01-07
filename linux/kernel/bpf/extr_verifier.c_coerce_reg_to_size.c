
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct bpf_reg_state {int umin_value; int umax_value; int smin_value; int smax_value; int var_off; } ;


 int tnum_cast (int ,int) ;

__attribute__((used)) static void coerce_reg_to_size(struct bpf_reg_state *reg, int size)
{
 u64 mask;


 reg->var_off = tnum_cast(reg->var_off, size);


 mask = ((u64)1 << (size * 8)) - 1;
 if ((reg->umin_value & ~mask) == (reg->umax_value & ~mask)) {
  reg->umin_value &= mask;
  reg->umax_value &= mask;
 } else {
  reg->umin_value = 0;
  reg->umax_value = mask;
 }
 reg->smin_value = reg->umin_value;
 reg->smax_value = reg->umax_value;
}
