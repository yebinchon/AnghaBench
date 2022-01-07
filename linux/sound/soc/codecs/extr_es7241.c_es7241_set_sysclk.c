
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct es7241_data {unsigned int mclk; } ;


 int ENOTSUPP ;
 int SND_SOC_CLOCK_IN ;
 struct es7241_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int es7241_set_sysclk(struct snd_soc_dai *dai, int clk_id,
        unsigned int freq, int dir)
{
 struct es7241_data *priv = snd_soc_dai_get_drvdata(dai);

 if (dir == SND_SOC_CLOCK_IN && clk_id == 0) {
  priv->mclk = freq;
  return 0;
 }

 return -ENOTSUPP;
}
