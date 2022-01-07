
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hal2_codec {int master; int inc; unsigned short mod; } ;



__attribute__((used)) static int hal2_compute_rate(struct hal2_codec *codec, unsigned int rate)
{
 unsigned short mod;

 if (44100 % rate < 48000 % rate) {
  mod = 4 * 44100 / rate;
  codec->master = 44100;
 } else {
  mod = 4 * 48000 / rate;
  codec->master = 48000;
 }

 codec->inc = 4;
 codec->mod = mod;
 rate = 4 * codec->master / mod;

 return rate;
}
