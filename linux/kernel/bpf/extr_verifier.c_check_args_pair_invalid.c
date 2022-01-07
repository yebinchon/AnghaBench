
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bpf_arg_type { ____Placeholder_bpf_arg_type } bpf_arg_type ;


 scalar_t__ arg_type_is_mem_ptr (int) ;
 scalar_t__ arg_type_is_mem_size (int) ;

__attribute__((used)) static bool check_args_pair_invalid(enum bpf_arg_type arg_curr,
        enum bpf_arg_type arg_next)
{
 return (arg_type_is_mem_ptr(arg_curr) &&
         !arg_type_is_mem_size(arg_next)) ||
        (!arg_type_is_mem_ptr(arg_curr) &&
  arg_type_is_mem_size(arg_next));
}
