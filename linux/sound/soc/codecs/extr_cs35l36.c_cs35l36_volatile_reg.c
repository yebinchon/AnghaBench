
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
 unsigned int CS35L36_PAC_PMEM_WORD0 ;
 unsigned int CS35L36_PAC_PMEM_WORD1023 ;






__attribute__((used)) static bool cs35l36_volatile_reg(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 131:
 case 130:
 case 150:
 case 129:
 case 128:
 case 152:
 case 151:
 case 132:
 case 146:
 case 143:
 case 139:
 case 136:
 case 147:
 case 144:
 case 140:
 case 137:
 case 148:
 case 145:
 case 141:
 case 138:
 case 149:
 case 142:
 case 133:
 case 134:
 case 135:
  return 1;
 default:
  if (reg >= CS35L36_PAC_PMEM_WORD0 &&
   reg <= CS35L36_PAC_PMEM_WORD1023)
   return 1;
  else
   return 0;
 }
}
