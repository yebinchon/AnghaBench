
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssm2602_priv {int regmap; int sysclk; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int EINVAL ;
 int IFACE_AUDIO_DATA_LEN ;
 int SSM2602_IFACE ;
 int SSM2602_SRATE ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;
 int regmap_write (int ,int ,int) ;
 struct ssm2602_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int ssm2602_get_coeff (int ,int ) ;

__attribute__((used)) static int ssm2602_hw_params(struct snd_pcm_substream *substream,
 struct snd_pcm_hw_params *params,
 struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct ssm2602_priv *ssm2602 = snd_soc_component_get_drvdata(component);
 int srate = ssm2602_get_coeff(ssm2602->sysclk, params_rate(params));
 unsigned int iface;

 if (srate < 0)
  return srate;

 regmap_write(ssm2602->regmap, SSM2602_SRATE, srate);


 switch (params_width(params)) {
 case 16:
  iface = 0x0;
  break;
 case 20:
  iface = 0x4;
  break;
 case 24:
  iface = 0x8;
  break;
 case 32:
  iface = 0xc;
  break;
 default:
  return -EINVAL;
 }
 regmap_update_bits(ssm2602->regmap, SSM2602_IFACE,
  IFACE_AUDIO_DATA_LEN, iface);
 return 0;
}
