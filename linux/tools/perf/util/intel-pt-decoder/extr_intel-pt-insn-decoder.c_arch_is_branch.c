
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_insn {scalar_t__ branch; } ;


 scalar_t__ INTEL_PT_BR_NO_BRANCH ;
 scalar_t__ intel_pt_get_insn (unsigned char const*,size_t,int,struct intel_pt_insn*) ;

int arch_is_branch(const unsigned char *buf, size_t len, int x86_64)
{
 struct intel_pt_insn in;
 if (intel_pt_get_insn(buf, len, x86_64, &in) < 0)
  return -1;
 return in.branch != INTEL_PT_BR_NO_BRANCH;
}
