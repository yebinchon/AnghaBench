
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct madera {int type; } ;




 int EINVAL ;

 int madera_get_legacy_dspclk_setting (struct madera*,unsigned int) ;

__attribute__((used)) static int madera_get_dspclk_setting(struct madera *madera,
         unsigned int freq,
         unsigned int *clock_2_val)
{
 switch (madera->type) {
 case 130:
 case 129:
 case 128:
  *clock_2_val = 0;
  return madera_get_legacy_dspclk_setting(madera, freq);
 default:
  if (freq > 150000000)
   return -EINVAL;


  *clock_2_val = freq / 15625;
  return 0;
 }
}
