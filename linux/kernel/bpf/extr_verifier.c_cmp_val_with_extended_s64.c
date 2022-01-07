
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_reg_state {scalar_t__ smin_value; scalar_t__ smax_value; } ;
typedef scalar_t__ s64 ;
typedef scalar_t__ s32 ;


 scalar_t__ S32_MAX ;
 scalar_t__ S32_MIN ;

__attribute__((used)) static bool cmp_val_with_extended_s64(s64 sval, struct bpf_reg_state *reg)
{
 return ((s32)sval >= 0 &&
  reg->smin_value >= 0 && reg->smax_value <= S32_MAX) ||
        ((s32)sval < 0 &&
  reg->smax_value <= 0 && reg->smin_value >= S32_MIN);
}
