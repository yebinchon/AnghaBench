
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned int lola_sample_rate_convert(unsigned int coded)
{
 unsigned int freq;


 switch (coded & 0x3) {
 case 0: freq = 48000; break;
 case 1: freq = 44100; break;
 case 2: freq = 32000; break;
 default: return 0;
 }


 switch (coded & 0x1c) {
 case (0 << 2): break;
 case (4 << 2): break;
 case (1 << 2): freq *= 2; break;
 case (2 << 2): freq *= 4; break;
 case (5 << 2): freq /= 2; break;
 case (6 << 2): freq /= 4; break;
 default: return 0;
 }


 switch (coded & 0x60) {
 case (0 << 5): break;
 case (1 << 5): freq = (freq * 999) / 1000; break;
 case (2 << 5): freq = (freq * 1001) / 1000; break;
 default: return 0;
 }
 return freq;
}
