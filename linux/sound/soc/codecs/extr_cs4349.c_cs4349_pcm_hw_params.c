
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct cs4349_private {int mode; int rate; } ;


 int CS4349_MODE ;
 int DIF_I2S ;
 int DIF_LEFT_JST ;
 int DIF_MASK ;
 int DIF_RGHT_JST16 ;
 int DIF_RGHT_JST24 ;
 int EINVAL ;
 int MODE_FORMAT (int) ;



 int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 struct cs4349_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int cs4349_pcm_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params,
       struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct cs4349_private *cs4349 = snd_soc_component_get_drvdata(component);
 int fmt, ret;

 cs4349->rate = params_rate(params);

 switch (cs4349->mode) {
 case 130:
  fmt = DIF_I2S;
  break;
 case 129:
  fmt = DIF_LEFT_JST;
  break;
 case 128:
  switch (params_width(params)) {
  case 16:
   fmt = DIF_RGHT_JST16;
   break;
  case 24:
   fmt = DIF_RGHT_JST24;
   break;
  default:
   return -EINVAL;
  }
  break;
 default:
  return -EINVAL;
 }

 ret = snd_soc_component_update_bits(component, CS4349_MODE, DIF_MASK,
      MODE_FORMAT(fmt));
 if (ret < 0)
  return ret;

 return 0;
}
