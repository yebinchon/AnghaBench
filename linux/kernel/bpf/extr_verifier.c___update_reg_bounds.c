
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; int mask; } ;
struct bpf_reg_state {TYPE_1__ var_off; int umax_value; int umin_value; int smax_value; int smin_value; } ;


 int S64_MAX ;
 int S64_MIN ;
 int max (int ,int) ;
 int max_t (int ,int ,int) ;
 int min (int ,int) ;
 int min_t (int ,int ,int) ;
 int s64 ;

__attribute__((used)) static void __update_reg_bounds(struct bpf_reg_state *reg)
{

 reg->smin_value = max_t(s64, reg->smin_value,
    reg->var_off.value | (reg->var_off.mask & S64_MIN));

 reg->smax_value = min_t(s64, reg->smax_value,
    reg->var_off.value | (reg->var_off.mask & S64_MAX));
 reg->umin_value = max(reg->umin_value, reg->var_off.value);
 reg->umax_value = min(reg->umax_value,
         reg->var_off.value | reg->var_off.mask);
}
