
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int PERF_REG_POWERPC_CTR ;
 int PERF_REG_POWERPC_LINK ;
 int PERF_REG_POWERPC_NIP ;
 int PERF_REG_POWERPC_R0 ;
 int PERF_REG_POWERPC_R1 ;
 int PERF_REG_POWERPC_R10 ;
 int PERF_REG_POWERPC_R11 ;
 int PERF_REG_POWERPC_R12 ;
 int PERF_REG_POWERPC_R13 ;
 int PERF_REG_POWERPC_R14 ;
 int PERF_REG_POWERPC_R15 ;
 int PERF_REG_POWERPC_R16 ;
 int PERF_REG_POWERPC_R17 ;
 int PERF_REG_POWERPC_R18 ;
 int PERF_REG_POWERPC_R19 ;
 int PERF_REG_POWERPC_R2 ;
 int PERF_REG_POWERPC_R20 ;
 int PERF_REG_POWERPC_R21 ;
 int PERF_REG_POWERPC_R22 ;
 int PERF_REG_POWERPC_R23 ;
 int PERF_REG_POWERPC_R24 ;
 int PERF_REG_POWERPC_R25 ;
 int PERF_REG_POWERPC_R26 ;
 int PERF_REG_POWERPC_R27 ;
 int PERF_REG_POWERPC_R28 ;
 int PERF_REG_POWERPC_R29 ;
 int PERF_REG_POWERPC_R3 ;
 int PERF_REG_POWERPC_R30 ;
 int PERF_REG_POWERPC_R31 ;
 int PERF_REG_POWERPC_R4 ;
 int PERF_REG_POWERPC_R5 ;
 int PERF_REG_POWERPC_R6 ;
 int PERF_REG_POWERPC_R7 ;
 int PERF_REG_POWERPC_R8 ;
 int PERF_REG_POWERPC_R9 ;
 int PERF_REG_POWERPC_XER ;
 int pr_err (char*,int) ;

int libunwind__arch_reg_id(int regnum)
{
 switch (regnum) {
 case 160:
  return PERF_REG_POWERPC_R0;
 case 159:
  return PERF_REG_POWERPC_R1;
 case 148:
  return PERF_REG_POWERPC_R2;
 case 137:
  return PERF_REG_POWERPC_R3;
 case 134:
  return PERF_REG_POWERPC_R4;
 case 133:
  return PERF_REG_POWERPC_R5;
 case 132:
  return PERF_REG_POWERPC_R6;
 case 131:
  return PERF_REG_POWERPC_R7;
 case 130:
  return PERF_REG_POWERPC_R8;
 case 129:
  return PERF_REG_POWERPC_R9;
 case 158:
  return PERF_REG_POWERPC_R10;
 case 157:
  return PERF_REG_POWERPC_R11;
 case 156:
  return PERF_REG_POWERPC_R12;
 case 155:
  return PERF_REG_POWERPC_R13;
 case 154:
  return PERF_REG_POWERPC_R14;
 case 153:
  return PERF_REG_POWERPC_R15;
 case 152:
  return PERF_REG_POWERPC_R16;
 case 151:
  return PERF_REG_POWERPC_R17;
 case 150:
  return PERF_REG_POWERPC_R18;
 case 149:
  return PERF_REG_POWERPC_R19;
 case 147:
  return PERF_REG_POWERPC_R20;
 case 146:
  return PERF_REG_POWERPC_R21;
 case 145:
  return PERF_REG_POWERPC_R22;
 case 144:
  return PERF_REG_POWERPC_R23;
 case 143:
  return PERF_REG_POWERPC_R24;
 case 142:
  return PERF_REG_POWERPC_R25;
 case 141:
  return PERF_REG_POWERPC_R26;
 case 140:
  return PERF_REG_POWERPC_R27;
 case 139:
  return PERF_REG_POWERPC_R28;
 case 138:
  return PERF_REG_POWERPC_R29;
 case 136:
  return PERF_REG_POWERPC_R30;
 case 135:
  return PERF_REG_POWERPC_R31;
 case 162:
  return PERF_REG_POWERPC_LINK;
 case 163:
  return PERF_REG_POWERPC_CTR;
 case 128:
  return PERF_REG_POWERPC_XER;
 case 161:
  return PERF_REG_POWERPC_NIP;
 default:
  pr_err("unwind: invalid reg id %d\n", regnum);
  return -EINVAL;
 }
 return -EINVAL;
}
