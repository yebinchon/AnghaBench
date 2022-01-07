
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_insn {int branch; int op; int rel; } ;






 char* intel_pt_insn_name (int ) ;
 int snprintf (char*,size_t,char*,char*,...) ;

int intel_pt_insn_desc(const struct intel_pt_insn *intel_pt_insn, char *buf,
         size_t buf_len)
{
 switch (intel_pt_insn->branch) {
 case 131:
 case 128:
  return snprintf(buf, buf_len, "%s %s%d",
    intel_pt_insn_name(intel_pt_insn->op),
    intel_pt_insn->rel > 0 ? "+" : "",
    intel_pt_insn->rel);
 case 129:
 case 130:
  return snprintf(buf, buf_len, "%s",
    intel_pt_insn_name(intel_pt_insn->op));
 default:
  break;
 }
 return 0;
}
