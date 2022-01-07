
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct da9055_priv {scalar_t__ mclk_rate; int master; } ;


 int DA9055_AIF_CTRL ;
 int DA9055_AIF_WORD_LENGTH_MASK ;
 int DA9055_AIF_WORD_S16_LE ;
 int DA9055_AIF_WORD_S20_3LE ;
 int DA9055_AIF_WORD_S24_LE ;
 int DA9055_AIF_WORD_S32_LE ;
 int DA9055_PLL_CTRL ;
 int DA9055_PLL_EN ;
 int DA9055_PLL_SRM_EN ;
 int DA9055_SR ;
 int DA9055_SR_11025 ;
 int DA9055_SR_12000 ;
 int DA9055_SR_16000 ;
 int DA9055_SR_22050 ;
 int DA9055_SR_32000 ;
 int DA9055_SR_44100 ;
 int DA9055_SR_48000 ;
 int DA9055_SR_8000 ;
 int DA9055_SR_88200 ;
 int DA9055_SR_96000 ;
 int EINVAL ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 struct da9055_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int da9055_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params,
       struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct da9055_priv *da9055 = snd_soc_component_get_drvdata(component);
 u8 aif_ctrl, fs;
 u32 sysclk;

 switch (params_width(params)) {
 case 16:
  aif_ctrl = DA9055_AIF_WORD_S16_LE;
  break;
 case 20:
  aif_ctrl = DA9055_AIF_WORD_S20_3LE;
  break;
 case 24:
  aif_ctrl = DA9055_AIF_WORD_S24_LE;
  break;
 case 32:
  aif_ctrl = DA9055_AIF_WORD_S32_LE;
  break;
 default:
  return -EINVAL;
 }


 snd_soc_component_update_bits(component, DA9055_AIF_CTRL, DA9055_AIF_WORD_LENGTH_MASK,
       aif_ctrl);

 switch (params_rate(params)) {
 case 8000:
  fs = DA9055_SR_8000;
  sysclk = 3072000;
  break;
 case 11025:
  fs = DA9055_SR_11025;
  sysclk = 2822400;
  break;
 case 12000:
  fs = DA9055_SR_12000;
  sysclk = 3072000;
  break;
 case 16000:
  fs = DA9055_SR_16000;
  sysclk = 3072000;
  break;
 case 22050:
  fs = DA9055_SR_22050;
  sysclk = 2822400;
  break;
 case 32000:
  fs = DA9055_SR_32000;
  sysclk = 3072000;
  break;
 case 44100:
  fs = DA9055_SR_44100;
  sysclk = 2822400;
  break;
 case 48000:
  fs = DA9055_SR_48000;
  sysclk = 3072000;
  break;
 case 88200:
  fs = DA9055_SR_88200;
  sysclk = 2822400;
  break;
 case 96000:
  fs = DA9055_SR_96000;
  sysclk = 3072000;
  break;
 default:
  return -EINVAL;
 }

 if (da9055->mclk_rate) {

  snd_soc_component_write(component, DA9055_SR, fs);
 } else {







  snd_soc_component_write(component, DA9055_SR, DA9055_SR_48000);
 }

 if (da9055->mclk_rate && (da9055->mclk_rate != sysclk)) {

  if (!da9055->master) {

   snd_soc_component_update_bits(component, DA9055_PLL_CTRL,
         DA9055_PLL_EN | DA9055_PLL_SRM_EN,
         DA9055_PLL_EN | DA9055_PLL_SRM_EN);
  } else {

   snd_soc_component_update_bits(component, DA9055_PLL_CTRL,
         DA9055_PLL_EN, DA9055_PLL_EN);
  }
 } else {

  snd_soc_component_update_bits(component, DA9055_PLL_CTRL, DA9055_PLL_EN, 0);
 }

 return 0;
}
