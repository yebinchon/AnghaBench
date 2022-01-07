
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_reg_state {scalar_t__ type; int var_off; } ;


 scalar_t__ SCALAR_VALUE ;
 scalar_t__ tnum_equals_const (int ,int ) ;

__attribute__((used)) static bool register_is_null(struct bpf_reg_state *reg)
{
 return reg->type == SCALAR_VALUE && tnum_equals_const(reg->var_off, 0);
}
