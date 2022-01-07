
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bpf_arg_type { ____Placeholder_bpf_arg_type } bpf_arg_type ;


 int ARG_CONST_SIZE ;
 int ARG_CONST_SIZE_OR_ZERO ;

__attribute__((used)) static bool arg_type_is_mem_size(enum bpf_arg_type type)
{
 return type == ARG_CONST_SIZE ||
        type == ARG_CONST_SIZE_OR_ZERO;
}
