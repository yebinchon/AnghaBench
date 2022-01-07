
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bpf_arg_type { ____Placeholder_bpf_arg_type } bpf_arg_type ;


 int ARG_PTR_TO_SOCK_COMMON ;

__attribute__((used)) static bool arg_type_may_be_refcounted(enum bpf_arg_type type)
{
 return type == ARG_PTR_TO_SOCK_COMMON;
}
