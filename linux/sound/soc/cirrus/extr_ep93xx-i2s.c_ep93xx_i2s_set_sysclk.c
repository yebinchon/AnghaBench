
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct ep93xx_i2s_info {int mclk; } ;


 int EINVAL ;
 int SND_SOC_CLOCK_IN ;
 int clk_set_rate (int ,unsigned int) ;
 struct ep93xx_i2s_info* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int ep93xx_i2s_set_sysclk(struct snd_soc_dai *cpu_dai, int clk_id,
     unsigned int freq, int dir)
{
 struct ep93xx_i2s_info *info = snd_soc_dai_get_drvdata(cpu_dai);

 if (dir == SND_SOC_CLOCK_IN || clk_id != 0)
  return -EINVAL;

 return clk_set_rate(info->mclk, freq);
}
