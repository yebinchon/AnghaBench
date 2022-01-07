
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int* dimm_fail_cmd_code ;
 int* dimm_fail_cmd_flags ;

__attribute__((used)) static int override_return_code(int dimm, unsigned int func, int rc)
{
 if ((1 << func) & dimm_fail_cmd_flags[dimm]) {
  if (dimm_fail_cmd_code[dimm])
   return dimm_fail_cmd_code[dimm];
  return -EIO;
 }
 return rc;
}
