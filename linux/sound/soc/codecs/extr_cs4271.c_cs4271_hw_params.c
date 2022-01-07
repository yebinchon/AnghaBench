
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int playback_active; int capture_active; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct cs4271_private {int rate; unsigned int mclk; scalar_t__ master; int regmap; scalar_t__ enable_soft_reset; } ;
struct TYPE_2__ {scalar_t__ master; unsigned int speed_mode; unsigned int ratio; unsigned int ratio_mask; } ;


 int CS4271_MODE1 ;
 unsigned int CS4271_MODE1_DIV_MASK ;
 unsigned int CS4271_MODE1_MODE_1X ;
 unsigned int CS4271_MODE1_MODE_2X ;
 unsigned int CS4271_MODE1_MODE_4X ;
 unsigned int CS4271_MODE1_MODE_MASK ;
 int CS4271_MODE2 ;
 unsigned int CS4271_MODE2_PDN ;
 int CS4271_NR_RATIOS ;
 int EINVAL ;
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 TYPE_1__* cs4271_clk_tab ;
 int cs4271_set_deemph (struct snd_soc_component*) ;
 int dev_err (int ,char*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct cs4271_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs4271_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params,
       struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct cs4271_private *cs4271 = snd_soc_component_get_drvdata(component);
 int i, ret;
 unsigned int ratio, val;

 if (cs4271->enable_soft_reset) {
  if ((substream->stream == SNDRV_PCM_STREAM_PLAYBACK &&
       !dai->capture_active) ||
      (substream->stream == SNDRV_PCM_STREAM_CAPTURE &&
       !dai->playback_active)) {
   ret = regmap_update_bits(cs4271->regmap, CS4271_MODE2,
       CS4271_MODE2_PDN,
       CS4271_MODE2_PDN);
   if (ret < 0)
    return ret;

   ret = regmap_update_bits(cs4271->regmap, CS4271_MODE2,
       CS4271_MODE2_PDN, 0);
   if (ret < 0)
    return ret;
  }
 }

 cs4271->rate = params_rate(params);


 if (cs4271->rate < 50000)
  val = CS4271_MODE1_MODE_1X;
 else if (cs4271->rate < 100000)
  val = CS4271_MODE1_MODE_2X;
 else
  val = CS4271_MODE1_MODE_4X;

 ratio = cs4271->mclk / cs4271->rate;
 for (i = 0; i < CS4271_NR_RATIOS; i++)
  if ((cs4271_clk_tab[i].master == cs4271->master) &&
      (cs4271_clk_tab[i].speed_mode == val) &&
      (cs4271_clk_tab[i].ratio == ratio))
   break;

 if (i == CS4271_NR_RATIOS) {
  dev_err(component->dev, "Invalid sample rate\n");
  return -EINVAL;
 }

 val |= cs4271_clk_tab[i].ratio_mask;

 ret = regmap_update_bits(cs4271->regmap, CS4271_MODE1,
  CS4271_MODE1_MODE_MASK | CS4271_MODE1_DIV_MASK, val);
 if (ret < 0)
  return ret;

 return cs4271_set_deemph(component);
}
