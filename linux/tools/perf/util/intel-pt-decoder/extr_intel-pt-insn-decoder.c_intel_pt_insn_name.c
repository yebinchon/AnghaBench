
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum intel_pt_insn_op { ____Placeholder_intel_pt_insn_op } intel_pt_insn_op ;


 char const** branch_name ;

const char *intel_pt_insn_name(enum intel_pt_insn_op op)
{
 return branch_name[op];
}
