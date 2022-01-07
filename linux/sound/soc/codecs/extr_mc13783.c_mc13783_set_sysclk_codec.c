
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;


 int MC13783_AUDIO_CODEC ;
 int mc13783_set_sysclk (struct snd_soc_dai*,int,unsigned int,int,int ) ;

__attribute__((used)) static int mc13783_set_sysclk_codec(struct snd_soc_dai *dai,
      int clk_id, unsigned int freq, int dir)
{
 return mc13783_set_sysclk(dai, clk_id, freq, dir, MC13783_AUDIO_CODEC);
}
