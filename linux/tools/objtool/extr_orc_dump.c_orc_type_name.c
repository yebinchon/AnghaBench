
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *orc_type_name(unsigned int type)
{
 switch (type) {
 case 130:
  return "call";
 case 129:
  return "regs";
 case 128:
  return "iret";
 default:
  return "?";
 }
}
