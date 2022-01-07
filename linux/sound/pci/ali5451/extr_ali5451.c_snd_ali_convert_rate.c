
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int snd_ali_convert_rate(unsigned int rate, int rec)
{
 unsigned int delta;

 if (rate < 4000)
  rate = 4000;
 if (rate > 48000)
  rate = 48000;

 if (rec) {
  if (rate == 44100)
   delta = 0x116a;
  else if (rate == 8000)
   delta = 0x6000;
  else if (rate == 48000)
   delta = 0x1000;
  else
   delta = ((48000 << 12) / rate) & 0x0000ffff;
 } else {
  if (rate == 44100)
   delta = 0xeb3;
  else if (rate == 8000)
   delta = 0x2ab;
  else if (rate == 48000)
   delta = 0x1000;
  else
   delta = (((rate << 12) + rate) / 48000) & 0x0000ffff;
 }

 return delta;
}
