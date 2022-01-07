
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int* def_rate ;

__attribute__((used)) static u32 snd_ymfpci_calc_lpfQ(u32 rate)
{
 u32 i;
 static u32 val[8] = {
  0x35280000, 0x34A70000, 0x32020000, 0x31770000,
  0x31390000, 0x31C90000, 0x33D00000, 0x40000000
 };

 if (rate == 44100)
  return 0x370A0000;
 for (i = 0; i < 8; i++)
  if (rate <= def_rate[i])
   return val[i];
 return val[0];
}
