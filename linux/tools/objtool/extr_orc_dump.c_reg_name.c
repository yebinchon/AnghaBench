
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *reg_name(unsigned int reg)
{
 switch (reg) {
 case 132:
  return "prevsp";
 case 133:
  return "dx";
 case 134:
  return "di";
 case 136:
  return "bp";
 case 129:
  return "sp";
 case 131:
  return "r10";
 case 130:
  return "r13";
 case 135:
  return "bp(ind)";
 case 128:
  return "sp(ind)";
 default:
  return "?";
 }
}
