
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct intel_pt_insn {int dummy; } ;


 int INTEL_PT_INSN_DESC_MAX ;
 int f ;
 int fprintf (int ,char*,...) ;
 scalar_t__ intel_pt_insn_desc (struct intel_pt_insn*,char*,int) ;
 scalar_t__ intel_pt_log_open () ;
 int intel_pt_print_no_data (int ,int) ;

void __intel_pt_log_insn_no_data(struct intel_pt_insn *intel_pt_insn,
     uint64_t ip)
{
 char desc[INTEL_PT_INSN_DESC_MAX];

 if (intel_pt_log_open())
  return;

 intel_pt_print_no_data(ip, 8);
 if (intel_pt_insn_desc(intel_pt_insn, desc, INTEL_PT_INSN_DESC_MAX) > 0)
  fprintf(f, "%s\n", desc);
 else
  fprintf(f, "Bad instruction!\n");
}
