
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tas5086_private {int rate; int mclk; int sclk; int format; int regmap; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int SND_SOC_DAIFMT_FORMAT_MASK ;



 int TAS5086_CLOCK_CONTROL ;
 int TAS5086_CLOCK_RATE (int) ;
 int TAS5086_CLOCK_RATE_MASK ;
 int TAS5086_CLOCK_RATIO (int) ;
 int TAS5086_CLOCK_RATIO_MASK ;
 int TAS5086_CLOCK_SCLK_RATIO_48 ;
 int TAS5086_CLOCK_VALID ;
 int TAS5086_SERIAL_DATA_IF ;
 int dev_err (int ,char*) ;
 int index_in_array (int ,int ,int) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;
 struct tas5086_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int tas5086_ratios ;
 int tas5086_sample_rates ;
 int tas5086_set_deemph (struct snd_soc_component*) ;

__attribute__((used)) static int tas5086_hw_params(struct snd_pcm_substream *substream,
        struct snd_pcm_hw_params *params,
        struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct tas5086_private *priv = snd_soc_component_get_drvdata(component);
 int val;
 int ret;

 priv->rate = params_rate(params);


 val = index_in_array(tas5086_sample_rates,
        ARRAY_SIZE(tas5086_sample_rates), priv->rate);

 if (val < 0) {
  dev_err(component->dev, "Invalid sample rate\n");
  return -EINVAL;
 }

 ret = regmap_update_bits(priv->regmap, TAS5086_CLOCK_CONTROL,
     TAS5086_CLOCK_RATE_MASK,
     TAS5086_CLOCK_RATE(val));
 if (ret < 0)
  return ret;


 val = index_in_array(tas5086_ratios, ARRAY_SIZE(tas5086_ratios),
        priv->mclk / priv->rate);
 if (val < 0) {
  dev_err(component->dev, "Invalid MCLK / Fs ratio\n");
  return -EINVAL;
 }

 ret = regmap_update_bits(priv->regmap, TAS5086_CLOCK_CONTROL,
     TAS5086_CLOCK_RATIO_MASK,
     TAS5086_CLOCK_RATIO(val));
 if (ret < 0)
  return ret;


 ret = regmap_update_bits(priv->regmap, TAS5086_CLOCK_CONTROL,
     TAS5086_CLOCK_SCLK_RATIO_48,
     (priv->sclk == 48 * priv->rate) ?
     TAS5086_CLOCK_SCLK_RATIO_48 : 0);
 if (ret < 0)
  return ret;
 switch (priv->format & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 128:
  val = 0x00;
  break;
 case 130:
  val = 0x03;
  break;
 case 129:
  val = 0x06;
  break;
 default:
  dev_err(component->dev, "Invalid DAI format\n");
  return -EINVAL;
 }


 switch (params_width(params)) {
        case 16:
  val += 0;
                break;
 case 20:
  val += 1;
  break;
 case 24:
  val += 2;
  break;
 default:
  dev_err(component->dev, "Invalid bit width\n");
  return -EINVAL;
 }

 ret = regmap_write(priv->regmap, TAS5086_SERIAL_DATA_IF, val);
 if (ret < 0)
  return ret;


 ret = regmap_update_bits(priv->regmap, TAS5086_CLOCK_CONTROL,
     TAS5086_CLOCK_VALID, TAS5086_CLOCK_VALID);
 if (ret < 0)
  return ret;

 return tas5086_set_deemph(component);
}
