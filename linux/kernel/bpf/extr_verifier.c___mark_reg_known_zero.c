
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_reg_state {int dummy; } ;


 int __mark_reg_known (struct bpf_reg_state*,int ) ;

__attribute__((used)) static void __mark_reg_known_zero(struct bpf_reg_state *reg)
{
 __mark_reg_known(reg, 0);
}
