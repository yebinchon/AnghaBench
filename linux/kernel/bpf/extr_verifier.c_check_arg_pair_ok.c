
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_func_proto {int arg5_type; int arg4_type; int arg3_type; int arg2_type; int arg1_type; } ;


 scalar_t__ arg_type_is_mem_ptr (int ) ;
 scalar_t__ arg_type_is_mem_size (int ) ;
 scalar_t__ check_args_pair_invalid (int ,int ) ;

__attribute__((used)) static bool check_arg_pair_ok(const struct bpf_func_proto *fn)
{





 if (arg_type_is_mem_size(fn->arg1_type) ||
     arg_type_is_mem_ptr(fn->arg5_type) ||
     check_args_pair_invalid(fn->arg1_type, fn->arg2_type) ||
     check_args_pair_invalid(fn->arg2_type, fn->arg3_type) ||
     check_args_pair_invalid(fn->arg3_type, fn->arg4_type) ||
     check_args_pair_invalid(fn->arg4_type, fn->arg5_type))
  return 0;

 return 1;
}
