
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_priv {int hsr_enabled; int hsl_enabled; int carkitr_enabled; int carkitl_enabled; int predriver_enabled; int predrivel_enabled; int earpiece_enabled; } ;
__attribute__((used)) static bool twl4030_can_write_to_chip(struct twl4030_priv *twl4030,
          unsigned int reg)
{
 bool write_to_reg = 0;


 switch (reg) {
 case 133:
  if (twl4030->earpiece_enabled)
   write_to_reg = 1;
  break;
 case 129:
  if (twl4030->predrivel_enabled)
   write_to_reg = 1;
  break;
 case 128:
  if (twl4030->predriver_enabled)
   write_to_reg = 1;
  break;
 case 131:
  if (twl4030->carkitl_enabled)
   write_to_reg = 1;
  break;
 case 130:
  if (twl4030->carkitr_enabled)
   write_to_reg = 1;
  break;
 case 132:
  if (twl4030->hsl_enabled || twl4030->hsr_enabled)
   write_to_reg = 1;
  break;
 default:

  write_to_reg = 1;
  break;
 }

 return write_to_reg;
}
