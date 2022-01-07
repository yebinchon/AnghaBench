
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_func_proto {int arg5_type; int arg4_type; int arg3_type; int arg2_type; int arg1_type; } ;


 scalar_t__ arg_type_may_be_refcounted (int ) ;
 scalar_t__ is_acquire_function (int) ;

__attribute__((used)) static bool check_refcount_ok(const struct bpf_func_proto *fn, int func_id)
{
 int count = 0;

 if (arg_type_may_be_refcounted(fn->arg1_type))
  count++;
 if (arg_type_may_be_refcounted(fn->arg2_type))
  count++;
 if (arg_type_may_be_refcounted(fn->arg3_type))
  count++;
 if (arg_type_may_be_refcounted(fn->arg4_type))
  count++;
 if (arg_type_may_be_refcounted(fn->arg5_type))
  count++;




 if (is_acquire_function(func_id) && count)
  return 0;




 return count <= 1;
}
