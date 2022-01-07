
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int PERF_REG_ARM_FP ;
 int PERF_REG_ARM_IP ;
 int PERF_REG_ARM_LR ;
 int PERF_REG_ARM_PC ;
 int PERF_REG_ARM_R0 ;
 int PERF_REG_ARM_R1 ;
 int PERF_REG_ARM_R10 ;
 int PERF_REG_ARM_R2 ;
 int PERF_REG_ARM_R3 ;
 int PERF_REG_ARM_R4 ;
 int PERF_REG_ARM_R5 ;
 int PERF_REG_ARM_R6 ;
 int PERF_REG_ARM_R7 ;
 int PERF_REG_ARM_R8 ;
 int PERF_REG_ARM_R9 ;
 int PERF_REG_ARM_SP ;
 int pr_err (char*,int) ;

int libunwind__arch_reg_id(int regnum)
{
 switch (regnum) {
 case 143:
  return PERF_REG_ARM_R0;
 case 142:
  return PERF_REG_ARM_R1;
 case 135:
  return PERF_REG_ARM_R2;
 case 134:
  return PERF_REG_ARM_R3;
 case 133:
  return PERF_REG_ARM_R4;
 case 132:
  return PERF_REG_ARM_R5;
 case 131:
  return PERF_REG_ARM_R6;
 case 130:
  return PERF_REG_ARM_R7;
 case 129:
  return PERF_REG_ARM_R8;
 case 128:
  return PERF_REG_ARM_R9;
 case 141:
  return PERF_REG_ARM_R10;
 case 140:
  return PERF_REG_ARM_FP;
 case 139:
  return PERF_REG_ARM_IP;
 case 138:
  return PERF_REG_ARM_SP;
 case 137:
  return PERF_REG_ARM_LR;
 case 136:
  return PERF_REG_ARM_PC;
 default:
  pr_err("unwind: invalid reg id %d\n", regnum);
  return -EINVAL;
 }

 return -EINVAL;
}
