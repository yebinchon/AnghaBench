
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int PERF_REG_ARM64_LR ;
 int PERF_REG_ARM64_PC ;
 int PERF_REG_ARM64_SP ;
 int PERF_REG_ARM64_X0 ;
 int PERF_REG_ARM64_X1 ;
 int PERF_REG_ARM64_X10 ;
 int PERF_REG_ARM64_X11 ;
 int PERF_REG_ARM64_X12 ;
 int PERF_REG_ARM64_X13 ;
 int PERF_REG_ARM64_X14 ;
 int PERF_REG_ARM64_X15 ;
 int PERF_REG_ARM64_X16 ;
 int PERF_REG_ARM64_X17 ;
 int PERF_REG_ARM64_X18 ;
 int PERF_REG_ARM64_X19 ;
 int PERF_REG_ARM64_X2 ;
 int PERF_REG_ARM64_X20 ;
 int PERF_REG_ARM64_X21 ;
 int PERF_REG_ARM64_X22 ;
 int PERF_REG_ARM64_X23 ;
 int PERF_REG_ARM64_X24 ;
 int PERF_REG_ARM64_X25 ;
 int PERF_REG_ARM64_X26 ;
 int PERF_REG_ARM64_X27 ;
 int PERF_REG_ARM64_X28 ;
 int PERF_REG_ARM64_X29 ;
 int PERF_REG_ARM64_X3 ;
 int PERF_REG_ARM64_X4 ;
 int PERF_REG_ARM64_X5 ;
 int PERF_REG_ARM64_X6 ;
 int PERF_REG_ARM64_X7 ;
 int PERF_REG_ARM64_X8 ;
 int PERF_REG_ARM64_X9 ;
 int pr_err (char*,int) ;

int LIBUNWIND__ARCH_REG_ID(int regnum)
{
 switch (regnum) {
 case 158:
  return PERF_REG_ARM64_X0;
 case 157:
  return PERF_REG_ARM64_X1;
 case 146:
  return PERF_REG_ARM64_X2;
 case 135:
  return PERF_REG_ARM64_X3;
 case 133:
  return PERF_REG_ARM64_X4;
 case 132:
  return PERF_REG_ARM64_X5;
 case 131:
  return PERF_REG_ARM64_X6;
 case 130:
  return PERF_REG_ARM64_X7;
 case 129:
  return PERF_REG_ARM64_X8;
 case 128:
  return PERF_REG_ARM64_X9;
 case 156:
  return PERF_REG_ARM64_X10;
 case 155:
  return PERF_REG_ARM64_X11;
 case 154:
  return PERF_REG_ARM64_X12;
 case 153:
  return PERF_REG_ARM64_X13;
 case 152:
  return PERF_REG_ARM64_X14;
 case 151:
  return PERF_REG_ARM64_X15;
 case 150:
  return PERF_REG_ARM64_X16;
 case 149:
  return PERF_REG_ARM64_X17;
 case 148:
  return PERF_REG_ARM64_X18;
 case 147:
  return PERF_REG_ARM64_X19;
 case 145:
  return PERF_REG_ARM64_X20;
 case 144:
  return PERF_REG_ARM64_X21;
 case 143:
  return PERF_REG_ARM64_X22;
 case 142:
  return PERF_REG_ARM64_X23;
 case 141:
  return PERF_REG_ARM64_X24;
 case 140:
  return PERF_REG_ARM64_X25;
 case 139:
  return PERF_REG_ARM64_X26;
 case 138:
  return PERF_REG_ARM64_X27;
 case 137:
  return PERF_REG_ARM64_X28;
 case 136:
  return PERF_REG_ARM64_X29;
 case 134:
  return PERF_REG_ARM64_LR;
 case 159:
  return PERF_REG_ARM64_SP;
 case 160:
  return PERF_REG_ARM64_PC;
 default:
  pr_err("unwind: invalid reg id %d\n", regnum);
  return -EINVAL;
 }

 return -EINVAL;
}
