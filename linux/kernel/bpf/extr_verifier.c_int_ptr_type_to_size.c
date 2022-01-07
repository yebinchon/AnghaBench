
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef enum bpf_arg_type { ____Placeholder_bpf_arg_type } bpf_arg_type ;


 int ARG_PTR_TO_INT ;
 int ARG_PTR_TO_LONG ;
 int EINVAL ;

__attribute__((used)) static int int_ptr_type_to_size(enum bpf_arg_type type)
{
 if (type == ARG_PTR_TO_INT)
  return sizeof(u32);
 else if (type == ARG_PTR_TO_LONG)
  return sizeof(u64);

 return -EINVAL;
}
