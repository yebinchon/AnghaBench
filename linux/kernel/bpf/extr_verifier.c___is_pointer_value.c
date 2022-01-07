
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_reg_state {scalar_t__ type; } ;


 scalar_t__ SCALAR_VALUE ;

__attribute__((used)) static bool __is_pointer_value(bool allow_ptr_leaks,
          const struct bpf_reg_state *reg)
{
 if (allow_ptr_leaks)
  return 0;

 return reg->type != SCALAR_VALUE;
}
