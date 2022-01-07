
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum intel_pt_insn_op { ____Placeholder_intel_pt_insn_op } intel_pt_insn_op ;
 int PERF_IP_FLAG_BRANCH ;
 int PERF_IP_FLAG_CALL ;
 int PERF_IP_FLAG_CONDITIONAL ;
 int PERF_IP_FLAG_INTERRUPT ;
 int PERF_IP_FLAG_RETURN ;
 int PERF_IP_FLAG_SYSCALLRET ;

int intel_pt_insn_type(enum intel_pt_insn_op op)
{
 switch (op) {
 case 131:
  return 0;
 case 137:
  return PERF_IP_FLAG_BRANCH | PERF_IP_FLAG_CALL;
 case 130:
  return PERF_IP_FLAG_BRANCH | PERF_IP_FLAG_RETURN;
 case 134:
  return PERF_IP_FLAG_BRANCH | PERF_IP_FLAG_CONDITIONAL;
 case 133:
  return PERF_IP_FLAG_BRANCH;
 case 132:
  return PERF_IP_FLAG_BRANCH | PERF_IP_FLAG_CONDITIONAL;
 case 135:
  return PERF_IP_FLAG_BRANCH | PERF_IP_FLAG_RETURN |
         PERF_IP_FLAG_INTERRUPT;
 case 136:
  return PERF_IP_FLAG_BRANCH | PERF_IP_FLAG_CALL |
         PERF_IP_FLAG_INTERRUPT;
 case 129:
  return PERF_IP_FLAG_BRANCH | PERF_IP_FLAG_CALL |
         PERF_IP_FLAG_SYSCALLRET;
 case 128:
  return PERF_IP_FLAG_BRANCH | PERF_IP_FLAG_RETURN |
         PERF_IP_FLAG_SYSCALLRET;
 default:
  return 0;
 }
}
