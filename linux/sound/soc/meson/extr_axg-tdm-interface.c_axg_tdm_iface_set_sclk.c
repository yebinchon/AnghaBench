
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct axg_tdm_iface {unsigned long slots; unsigned long slot_width; unsigned long mclk_rate; int fmt; int sclk; int mclk; } ;


 int EINVAL ;
 scalar_t__ axg_tdm_sclk_invert (int ) ;
 int clk_set_phase (int ,int) ;
 int clk_set_rate (int ,unsigned long) ;
 int dev_err (int ,char*,int,...) ;
 unsigned long params_rate (struct snd_pcm_hw_params*) ;
 struct axg_tdm_iface* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int axg_tdm_iface_set_sclk(struct snd_soc_dai *dai,
      struct snd_pcm_hw_params *params)
{
 struct axg_tdm_iface *iface = snd_soc_dai_get_drvdata(dai);
 unsigned long srate;
 int ret;

 srate = iface->slots * iface->slot_width * params_rate(params);

 if (!iface->mclk_rate) {

  clk_set_rate(iface->mclk, 4 * srate);
 } else {

  if (iface->mclk_rate % srate) {
   dev_err(dai->dev,
    "can't derive sclk %lu from mclk %lu\n",
    srate, iface->mclk_rate);
   return -EINVAL;
  }
 }

 ret = clk_set_rate(iface->sclk, srate);
 if (ret) {
  dev_err(dai->dev, "setting bit clock failed: %d\n", ret);
  return ret;
 }


 ret = clk_set_phase(iface->sclk,
       axg_tdm_sclk_invert(iface->fmt) ? 0 : 180);
 if (ret) {
  dev_err(dai->dev, "setting bit clock phase failed: %d\n", ret);
  return ret;
 }

 return ret;
}
