
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct axg_tdm_iface {int fmt; int lrclk; } ;


 int EINVAL ;


 int SND_SOC_DAIFMT_FORMAT_MASK ;



 scalar_t__ axg_tdm_lrclk_invert (int) ;
 int clk_set_duty_cycle (int ,unsigned int,int) ;
 int clk_set_phase (int ,int) ;
 int clk_set_rate (int ,int ) ;
 int dev_err (int ,char*,int) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 struct axg_tdm_iface* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int axg_tdm_iface_set_lrclk(struct snd_soc_dai *dai,
       struct snd_pcm_hw_params *params)
{
 struct axg_tdm_iface *iface = snd_soc_dai_get_drvdata(dai);
 unsigned int ratio_num;
 int ret;

 ret = clk_set_rate(iface->lrclk, params_rate(params));
 if (ret) {
  dev_err(dai->dev, "setting sample clock failed: %d\n", ret);
  return ret;
 }

 switch (iface->fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 130:
 case 129:
 case 128:

  ratio_num = 1;
  break;

 case 132:
 case 131:






  ratio_num = 0;
  break;

 default:
  return -EINVAL;
 }

 ret = clk_set_duty_cycle(iface->lrclk, ratio_num, 2);
 if (ret) {
  dev_err(dai->dev,
   "setting sample clock duty cycle failed: %d\n", ret);
  return ret;
 }


 ret = clk_set_phase(iface->lrclk,
       axg_tdm_lrclk_invert(iface->fmt) ? 180 : 0);
 if (ret) {
  dev_err(dai->dev,
   "setting sample clock phase failed: %d\n", ret);
  return ret;
 }

 return 0;
}
