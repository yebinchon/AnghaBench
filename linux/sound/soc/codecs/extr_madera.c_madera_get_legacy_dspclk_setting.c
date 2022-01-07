
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct madera {int rev; int type; } ;



 int EINVAL ;
 int MADERA_DSPCLK_147MHZ ;
 int MADERA_DSP_CLK_FREQ_LEGACY_SHIFT ;
 int MADERA_SYSCLK_49MHZ ;
 int MADERA_SYSCLK_FREQ_SHIFT ;


__attribute__((used)) static int madera_get_legacy_dspclk_setting(struct madera *madera,
         unsigned int freq)
{
 switch (freq) {
 case 0:
  return 0;
 case 45158400:
 case 49152000:
  switch (madera->type) {
  case 129:
  case 128:
   if (madera->rev < 3)
    return -EINVAL;
   else
    return MADERA_SYSCLK_49MHZ <<
           MADERA_SYSCLK_FREQ_SHIFT;
  default:
   return -EINVAL;
  }
 case 135475200:
 case 147456000:
  return MADERA_DSPCLK_147MHZ << MADERA_DSP_CLK_FREQ_LEGACY_SHIFT;
 default:
  return -EINVAL;
 }
}
