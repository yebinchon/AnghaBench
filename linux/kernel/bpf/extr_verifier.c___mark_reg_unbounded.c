
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_reg_state {int umax_value; scalar_t__ umin_value; int smax_value; int smin_value; } ;


 int S64_MAX ;
 int S64_MIN ;
 int U64_MAX ;

__attribute__((used)) static void __mark_reg_unbounded(struct bpf_reg_state *reg)
{
 reg->smin_value = S64_MIN;
 reg->smax_value = S64_MAX;
 reg->umin_value = 0;
 reg->umax_value = U64_MAX;
}
