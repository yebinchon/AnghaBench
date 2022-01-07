
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_i2s {unsigned int mclk_freq; } ;
struct snd_soc_dai {int dummy; } ;


 int EINVAL ;
 struct sun4i_i2s* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int sun4i_i2s_set_sysclk(struct snd_soc_dai *dai, int clk_id,
    unsigned int freq, int dir)
{
 struct sun4i_i2s *i2s = snd_soc_dai_get_drvdata(dai);

 if (clk_id != 0)
  return -EINVAL;

 i2s->mclk_freq = freq;

 return 0;
}
