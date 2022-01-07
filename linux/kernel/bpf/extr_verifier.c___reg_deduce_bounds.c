
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_reg_state {scalar_t__ smin_value; scalar_t__ smax_value; scalar_t__ umin_value; scalar_t__ umax_value; } ;
typedef scalar_t__ s64 ;


 void* max_t (int ,scalar_t__,scalar_t__) ;
 void* min_t (int ,scalar_t__,scalar_t__) ;
 int u64 ;

__attribute__((used)) static void __reg_deduce_bounds(struct bpf_reg_state *reg)
{





 if (reg->smin_value >= 0 || reg->smax_value < 0) {
  reg->smin_value = reg->umin_value = max_t(u64, reg->smin_value,
         reg->umin_value);
  reg->smax_value = reg->umax_value = min_t(u64, reg->smax_value,
         reg->umax_value);
  return;
 }



 if ((s64)reg->umax_value >= 0) {



  reg->smin_value = reg->umin_value;
  reg->smax_value = reg->umax_value = min_t(u64, reg->smax_value,
         reg->umax_value);
 } else if ((s64)reg->umin_value < 0) {



  reg->smin_value = reg->umin_value = max_t(u64, reg->smin_value,
         reg->umin_value);
  reg->smax_value = reg->umax_value;
 }
}
