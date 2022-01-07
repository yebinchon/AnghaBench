
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tas571x_private {int format; int regmap; } ;
struct snd_soc_dai {int component; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int EINVAL ;
 int SND_SOC_DAIFMT_FORMAT_MASK ;



 int TAS571X_SDI_FMT_MASK ;
 int TAS571X_SDI_REG ;
 int params_width (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 struct tas571x_private* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int tas571x_hw_params(struct snd_pcm_substream *substream,
        struct snd_pcm_hw_params *params,
        struct snd_soc_dai *dai)
{
 struct tas571x_private *priv = snd_soc_component_get_drvdata(dai->component);
 u32 val;

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
  return -EINVAL;
 }

 if (params_width(params) >= 24)
  val += 2;
 else if (params_width(params) >= 20)
  val += 1;

 return regmap_update_bits(priv->regmap, TAS571X_SDI_REG,
      TAS571X_SDI_FMT_MASK, val);
}
