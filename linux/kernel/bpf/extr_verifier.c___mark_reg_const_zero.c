
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_reg_state {int type; } ;


 int SCALAR_VALUE ;
 int __mark_reg_known (struct bpf_reg_state*,int ) ;

__attribute__((used)) static void __mark_reg_const_zero(struct bpf_reg_state *reg)
{
 __mark_reg_known(reg, 0);
 reg->type = SCALAR_VALUE;
}
