
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int cq93vc_set_dai_sysclk(struct snd_soc_dai *codec_dai,
     int clk_id, unsigned int freq, int dir)
{
 switch (freq) {
 case 22579200:
 case 27000000:
 case 33868800:
  return 0;
 }

 return -EINVAL;
}
