
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;



 unsigned int WM5100_DSP1_DM_0 ;
 unsigned int WM5100_DSP1_DM_511 ;
 unsigned int WM5100_DSP1_PM_0 ;
 unsigned int WM5100_DSP1_PM_1535 ;
 unsigned int WM5100_DSP1_ZM_0 ;
 unsigned int WM5100_DSP1_ZM_2047 ;
 unsigned int WM5100_DSP2_DM_0 ;
 unsigned int WM5100_DSP2_DM_511 ;
 unsigned int WM5100_DSP2_PM_0 ;
 unsigned int WM5100_DSP2_PM_1535 ;
 unsigned int WM5100_DSP2_ZM_0 ;
 unsigned int WM5100_DSP2_ZM_2047 ;
 unsigned int WM5100_DSP3_DM_0 ;
 unsigned int WM5100_DSP3_DM_511 ;
 unsigned int WM5100_DSP3_PM_0 ;
 unsigned int WM5100_DSP3_PM_1535 ;
 unsigned int WM5100_DSP3_ZM_0 ;
 unsigned int WM5100_DSP3_ZM_2047 ;
bool wm5100_volatile_register(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 128:
 case 141:
 case 140:
 case 135:
 case 134:
 case 133:
 case 132:
 case 138:
 case 137:
 case 136:
 case 130:
 case 129:
 case 139:
 case 131:
  return 1;
 default:
  if ((reg >= WM5100_DSP1_PM_0 && reg <= WM5100_DSP1_PM_1535) ||
      (reg >= WM5100_DSP1_ZM_0 && reg <= WM5100_DSP1_ZM_2047) ||
      (reg >= WM5100_DSP1_DM_0 && reg <= WM5100_DSP1_DM_511) ||
      (reg >= WM5100_DSP2_PM_0 && reg <= WM5100_DSP2_PM_1535) ||
      (reg >= WM5100_DSP2_ZM_0 && reg <= WM5100_DSP2_ZM_2047) ||
      (reg >= WM5100_DSP2_DM_0 && reg <= WM5100_DSP2_DM_511) ||
      (reg >= WM5100_DSP3_PM_0 && reg <= WM5100_DSP3_PM_1535) ||
      (reg >= WM5100_DSP3_ZM_0 && reg <= WM5100_DSP3_ZM_2047) ||
      (reg >= WM5100_DSP3_DM_0 && reg <= WM5100_DSP3_DM_511))
   return 1;
  else
   return 0;
 }
}
