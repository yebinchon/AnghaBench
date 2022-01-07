
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_reg_state {int type; } ;


 int NOT_INIT ;
 int __mark_reg_unknown (struct bpf_reg_state*) ;

__attribute__((used)) static void __mark_reg_not_init(struct bpf_reg_state *reg)
{
 __mark_reg_unknown(reg);
 reg->type = NOT_INIT;
}
