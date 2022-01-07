
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_reg_state {int umax_value; int umin_value; int var_off; } ;


 int tnum_intersect (int ,int ) ;
 int tnum_range (int ,int ) ;

__attribute__((used)) static void __reg_bound_offset(struct bpf_reg_state *reg)
{
 reg->var_off = tnum_intersect(reg->var_off,
          tnum_range(reg->umin_value,
       reg->umax_value));
}
