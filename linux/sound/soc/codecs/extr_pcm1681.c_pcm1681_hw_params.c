
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct pcm1681_private {int format; int regmap; int rate; } ;


 int EINVAL ;
 int PCM1681_FMT_CONTROL ;
 int SND_SOC_DAIFMT_FORMAT_MASK ;



 int dev_err (int ,char*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 int pcm1681_set_deemph (struct snd_soc_component*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct pcm1681_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int pcm1681_hw_params(struct snd_pcm_substream *substream,
        struct snd_pcm_hw_params *params,
        struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct pcm1681_private *priv = snd_soc_component_get_drvdata(component);
 int val = 0, ret;

 priv->rate = params_rate(params);

 switch (priv->format & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 128:
  switch (params_width(params)) {
  case 24:
   val = 0;
   break;
  case 16:
   val = 3;
   break;
  default:
   return -EINVAL;
  }
  break;
 case 130:
  val = 0x04;
  break;
 case 129:
  val = 0x05;
  break;
 default:
  dev_err(component->dev, "Invalid DAI format\n");
  return -EINVAL;
 }

 ret = regmap_update_bits(priv->regmap, PCM1681_FMT_CONTROL, 0x0f, val);
 if (ret < 0)
  return ret;

 return pcm1681_set_deemph(component);
}
