
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 sis_rate_to_delta(unsigned int rate)
{
 u32 delta;
 if (rate == 44100)
  delta = 0xeb3;
 else if (rate == 8000)
  delta = 0x2ab;
 else if (rate == 48000)
  delta = 0x1000;
 else
  delta = (((rate << 12) + 24000) / 48000) & 0x0000ffff;
 return delta;
}
