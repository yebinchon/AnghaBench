
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct snd_soc_dai {size_t id; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct cs43130_rate_map {int val; } ;
struct cs43130_private {int clk_req; int regmap; TYPE_1__* dais; int clk_mutex; scalar_t__ pll_bypass; int mclk; } ;
struct TYPE_2__ {unsigned int sclk; scalar_t__ dai_mode; } ;




 int CS43130_DSD_PATH_CTL_2 ;
 int CS43130_DSD_SPEED_MASK ;
 int CS43130_DSD_SPEED_SHIFT ;
 int CS43130_DSD_SRC_ASP ;
 int CS43130_DSD_SRC_MASK ;
 int CS43130_DSD_SRC_SHIFT ;
 int CS43130_DSD_SRC_XSP ;
 unsigned int CS43130_MCLK_22M ;
 unsigned int CS43130_MCLK_24M ;
 int CS43130_MCLK_SRC_EXT ;
 int CS43130_MCLK_SRC_PLL ;
 int CS43130_SP_SRATE ;

 int EINVAL ;
 scalar_t__ SND_SOC_DAIFMT_CBM_CFM ;
 int cs43130_change_clksrc (struct snd_soc_component*,int ) ;
 struct cs43130_rate_map* cs43130_get_rate_table (unsigned int) ;
 int cs43130_pcm_dsd_mix (int,int ) ;
 int cs43130_set_bitwidth (size_t,unsigned int,int ) ;
 int cs43130_set_pll (struct snd_soc_component*,int ,int ,int ,unsigned int) ;
 int cs43130_set_sp_fmt (size_t,unsigned int,struct snd_pcm_hw_params*,struct cs43130_private*) ;
 int dev_dbg (int ,char*,unsigned int,unsigned int,...) ;
 int dev_err (int ,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned int params_channels (struct snd_pcm_hw_params*) ;
 unsigned int params_rate (struct snd_pcm_hw_params*) ;
 scalar_t__ params_width (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int regmap_write (int ,int ,int ) ;
 struct cs43130_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs43130_hw_params(struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *params,
     struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct cs43130_private *cs43130 = snd_soc_component_get_drvdata(component);
 const struct cs43130_rate_map *rate_map;
 unsigned int sclk = cs43130->dais[dai->id].sclk;
 unsigned int bitwidth_sclk;
 unsigned int bitwidth_dai = (unsigned int)(params_width(params));
 unsigned int required_clk;
 u8 dsd_speed;

 mutex_lock(&cs43130->clk_mutex);
 if (!cs43130->clk_req) {

  if (!(CS43130_MCLK_22M % params_rate(params)))
   required_clk = CS43130_MCLK_22M;
  else
   required_clk = CS43130_MCLK_24M;

  cs43130_set_pll(component, 0, 0, cs43130->mclk, required_clk);
  if (cs43130->pll_bypass)
   cs43130_change_clksrc(component, CS43130_MCLK_SRC_EXT);
  else
   cs43130_change_clksrc(component, CS43130_MCLK_SRC_PLL);
 }

 cs43130->clk_req++;
 if (cs43130->clk_req == 2)
  cs43130_pcm_dsd_mix(1, cs43130->regmap);
 mutex_unlock(&cs43130->clk_mutex);

 switch (dai->id) {
 case 130:
 case 128:

  bitwidth_dai = 24;
  sclk = params_rate(params) * bitwidth_dai *
         params_channels(params);

  switch (params_rate(params)) {
  case 176400:
   dsd_speed = 0;
   break;
  case 352800:
   dsd_speed = 1;
   break;
  default:
   dev_err(component->dev, "Rate(%u) not supported\n",
    params_rate(params));
   return -EINVAL;
  }

  regmap_update_bits(cs43130->regmap, CS43130_DSD_PATH_CTL_2,
       CS43130_DSD_SPEED_MASK,
       dsd_speed << CS43130_DSD_SPEED_SHIFT);
  break;
 case 129:
  rate_map = cs43130_get_rate_table(params_rate(params));
  if (!rate_map)
   return -EINVAL;

  regmap_write(cs43130->regmap, CS43130_SP_SRATE, rate_map->val);
  break;
 default:
  dev_err(component->dev, "Invalid DAI (%d)\n", dai->id);
  return -EINVAL;
 }

 switch (dai->id) {
 case 130:
  regmap_update_bits(cs43130->regmap, CS43130_DSD_PATH_CTL_2,
       CS43130_DSD_SRC_MASK, CS43130_DSD_SRC_ASP <<
       CS43130_DSD_SRC_SHIFT);
  break;
 case 128:
  regmap_update_bits(cs43130->regmap, CS43130_DSD_PATH_CTL_2,
       CS43130_DSD_SRC_MASK, CS43130_DSD_SRC_XSP <<
       CS43130_DSD_SRC_SHIFT);
  break;
 }

 if (!sclk && cs43130->dais[dai->id].dai_mode == SND_SOC_DAIFMT_CBM_CFM)

  sclk = params_rate(params) * bitwidth_dai *
         params_channels(params);

 if (!sclk) {

  dev_err(component->dev, "SCLK freq is not set\n");
  return -EINVAL;
 }

 bitwidth_sclk = (sclk / params_rate(params)) / params_channels(params);
 if (bitwidth_sclk < bitwidth_dai) {
  dev_err(component->dev, "Format not supported: SCLK freq is too low\n");
  return -EINVAL;
 }

 dev_dbg(component->dev,
  "sclk = %u, fs = %d, bitwidth_dai = %u\n",
  sclk, params_rate(params), bitwidth_dai);

 dev_dbg(component->dev,
  "bitwidth_sclk = %u, num_ch = %u\n",
  bitwidth_sclk, params_channels(params));

 cs43130_set_bitwidth(dai->id, bitwidth_dai, cs43130->regmap);
 cs43130_set_sp_fmt(dai->id, bitwidth_sclk, params, cs43130);

 return 0;
}
