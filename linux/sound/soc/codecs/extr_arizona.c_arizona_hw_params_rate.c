
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dai {int id; TYPE_1__* driver; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct arizona_priv {TYPE_2__* arizona; struct arizona_dai_priv* dai; } ;
struct arizona_dai_priv {int clk; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {int base; } ;


 int ARIZONA_AIF1_RATE_MASK ;
 int ARIZONA_AIF1_RATE_SHIFT ;
 int ARIZONA_AIF_RATE_CTRL ;
 int ARIZONA_ASYNC_SAMPLE_RATE_1 ;
 int ARIZONA_ASYNC_SAMPLE_RATE_1_MASK ;


 int ARIZONA_DVFS_SR1_RQ ;
 int ARIZONA_SAMPLE_RATE_1 ;
 int ARIZONA_SAMPLE_RATE_1_MASK ;
 int ARRAY_SIZE (scalar_t__*) ;
 int EINVAL ;


 int arizona_aif_err (struct snd_soc_dai*,char*,int) ;
 int arizona_dvfs_down (struct snd_soc_component*,int ) ;
 int arizona_dvfs_up (struct snd_soc_component*,int ) ;
 scalar_t__* arizona_sr_vals ;
 int arizona_wm5102_set_dac_comp (struct snd_soc_component*,int) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 struct arizona_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;

__attribute__((used)) static int arizona_hw_params_rate(struct snd_pcm_substream *substream,
      struct snd_pcm_hw_params *params,
      struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct arizona_priv *priv = snd_soc_component_get_drvdata(component);
 struct arizona_dai_priv *dai_priv = &priv->dai[dai->id - 1];
 int base = dai->driver->base;
 int i, sr_val, ret;





 for (i = 0; i < ARRAY_SIZE(arizona_sr_vals); i++)
  if (arizona_sr_vals[i] == params_rate(params))
   break;
 if (i == ARRAY_SIZE(arizona_sr_vals)) {
  arizona_aif_err(dai, "Unsupported sample rate %dHz\n",
    params_rate(params));
  return -EINVAL;
 }
 sr_val = i;

 switch (priv->arizona->type) {
 case 129:
 case 128:
  if (arizona_sr_vals[sr_val] >= 88200)
   ret = arizona_dvfs_up(component, ARIZONA_DVFS_SR1_RQ);
  else
   ret = arizona_dvfs_down(component, ARIZONA_DVFS_SR1_RQ);

  if (ret) {
   arizona_aif_err(dai, "Failed to change DVFS %d\n", ret);
   return ret;
  }
  break;
 default:
  break;
 }

 switch (dai_priv->clk) {
 case 130:
  switch (priv->arizona->type) {
  case 129:
   arizona_wm5102_set_dac_comp(component,
          params_rate(params));
   break;
  default:
   break;
  }

  snd_soc_component_update_bits(component, ARIZONA_SAMPLE_RATE_1,
           ARIZONA_SAMPLE_RATE_1_MASK,
           sr_val);
  if (base)
   snd_soc_component_update_bits(component,
     base + ARIZONA_AIF_RATE_CTRL,
     ARIZONA_AIF1_RATE_MASK, 0);
  break;
 case 131:
  snd_soc_component_update_bits(component,
           ARIZONA_ASYNC_SAMPLE_RATE_1,
           ARIZONA_ASYNC_SAMPLE_RATE_1_MASK,
           sr_val);
  if (base)
   snd_soc_component_update_bits(component,
     base + ARIZONA_AIF_RATE_CTRL,
     ARIZONA_AIF1_RATE_MASK,
     8 << ARIZONA_AIF1_RATE_SHIFT);
  break;
 default:
  arizona_aif_err(dai, "Invalid clock %d\n", dai_priv->clk);
  return -EINVAL;
 }

 return 0;
}
