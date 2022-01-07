
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ORC_REG_BP_INDIRECT ;
 unsigned int ORC_REG_SP_INDIRECT ;
 unsigned int ORC_REG_UNDEFINED ;
 int printf (char*,...) ;
 char* reg_name (unsigned int) ;

__attribute__((used)) static void print_reg(unsigned int reg, int offset)
{
 if (reg == ORC_REG_BP_INDIRECT)
  printf("(bp%+d)", offset);
 else if (reg == ORC_REG_SP_INDIRECT)
  printf("(sp%+d)", offset);
 else if (reg == ORC_REG_UNDEFINED)
  printf("(und)");
 else
  printf("%s%+d", reg_name(reg), offset);
}
