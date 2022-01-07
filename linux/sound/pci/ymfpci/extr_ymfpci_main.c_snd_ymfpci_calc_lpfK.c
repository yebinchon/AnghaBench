
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int* def_rate ;

__attribute__((used)) static u32 snd_ymfpci_calc_lpfK(u32 rate)
{
 u32 i;
 static u32 val[8] = {
  0x00570000, 0x06AA0000, 0x18B20000, 0x20930000,
  0x2B9A0000, 0x35A10000, 0x3EAA0000, 0x40000000
 };

 if (rate == 44100)
  return 0x40000000;
 for (i = 0; i < 8; i++)
  if (rate <= def_rate[i])
   return val[i];
 return val[0];
}
