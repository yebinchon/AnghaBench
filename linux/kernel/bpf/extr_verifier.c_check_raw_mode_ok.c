
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_func_proto {scalar_t__ arg1_type; scalar_t__ arg2_type; scalar_t__ arg3_type; scalar_t__ arg4_type; scalar_t__ arg5_type; } ;


 scalar_t__ ARG_PTR_TO_UNINIT_MEM ;

__attribute__((used)) static bool check_raw_mode_ok(const struct bpf_func_proto *fn)
{
 int count = 0;

 if (fn->arg1_type == ARG_PTR_TO_UNINIT_MEM)
  count++;
 if (fn->arg2_type == ARG_PTR_TO_UNINIT_MEM)
  count++;
 if (fn->arg3_type == ARG_PTR_TO_UNINIT_MEM)
  count++;
 if (fn->arg4_type == ARG_PTR_TO_UNINIT_MEM)
  count++;
 if (fn->arg5_type == ARG_PTR_TO_UNINIT_MEM)
  count++;





 return count <= 1;
}
