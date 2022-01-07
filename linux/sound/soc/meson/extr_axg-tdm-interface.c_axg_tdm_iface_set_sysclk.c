
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; } ;
struct axg_tdm_iface {unsigned int mclk_rate; int mclk; } ;


 int ENOTSUPP ;
 int SND_SOC_CLOCK_OUT ;
 int clk_set_rate (int ,unsigned int) ;
 int dev_warn (int ,char*) ;
 struct axg_tdm_iface* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int axg_tdm_iface_set_sysclk(struct snd_soc_dai *dai, int clk_id,
        unsigned int freq, int dir)
{
 struct axg_tdm_iface *iface = snd_soc_dai_get_drvdata(dai);
 int ret = -ENOTSUPP;

 if (dir == SND_SOC_CLOCK_OUT && clk_id == 0) {
  if (!iface->mclk) {
   dev_warn(dai->dev, "master clock not provided\n");
  } else {
   ret = clk_set_rate(iface->mclk, freq);
   if (!ret)
    iface->mclk_rate = freq;
  }
 }

 return ret;
}
