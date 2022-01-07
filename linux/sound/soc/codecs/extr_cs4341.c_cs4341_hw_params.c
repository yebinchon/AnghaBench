
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct cs4341_priv {int fmt; } ;


 int CS4341_MODE2_DIF ;
 unsigned int CS4341_MODE2_DIF_I2S_16 ;
 unsigned int CS4341_MODE2_DIF_I2S_24 ;
 unsigned int CS4341_MODE2_DIF_LJ_24 ;
 unsigned int CS4341_MODE2_DIF_RJ_16 ;
 unsigned int CS4341_MODE2_DIF_RJ_24 ;
 int CS4341_REG_MODE2 ;
 int EINVAL ;





 int dev_err (int ,char*,int) ;
 int params_format (struct snd_pcm_hw_params*) ;
 struct cs4341_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,unsigned int) ;

__attribute__((used)) static int cs4341_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params,
       struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct cs4341_priv *cs4341 = snd_soc_component_get_drvdata(component);
 unsigned int mode = 0;
 int b24 = 0;

 switch (params_format(params)) {
 case 131:
  b24 = 1;
  break;
 case 132:
  break;
 default:
  dev_err(component->dev, "Unsupported PCM format 0x%08x.\n",
   params_format(params));
  return -EINVAL;
 }

 switch (cs4341->fmt) {
 case 130:
  mode = b24 ? CS4341_MODE2_DIF_I2S_24 : CS4341_MODE2_DIF_I2S_16;
  break;
 case 129:
  mode = CS4341_MODE2_DIF_LJ_24;
  break;
 case 128:
  mode = b24 ? CS4341_MODE2_DIF_RJ_24 : CS4341_MODE2_DIF_RJ_16;
  break;
 default:
  dev_err(component->dev, "Unsupported DAI format 0x%08x.\n",
   cs4341->fmt);
  return -EINVAL;
 }

 return snd_soc_component_update_bits(component, CS4341_REG_MODE2,
          CS4341_MODE2_DIF, mode);
}
