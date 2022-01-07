
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlv320dac33_priv {int burst_bclkdiv; void* burst_rate; int fifo_size; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;


 void* CALC_BURST_RATE (int ,int) ;
 int DAC33_FIFO_SIZE_16BIT ;
 int DAC33_FIFO_SIZE_24BIT ;
 int EINVAL ;
 int dev_err (int ,char*,int) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 struct tlv320dac33_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int dac33_hw_params(struct snd_pcm_substream *substream,
      struct snd_pcm_hw_params *params,
      struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct tlv320dac33_priv *dac33 = snd_soc_component_get_drvdata(component);


 switch (params_rate(params)) {
 case 44100:
 case 48000:
  break;
 default:
  dev_err(component->dev, "unsupported rate %d\n",
   params_rate(params));
  return -EINVAL;
 }

 switch (params_width(params)) {
 case 16:
  dac33->fifo_size = DAC33_FIFO_SIZE_16BIT;
  dac33->burst_rate = CALC_BURST_RATE(dac33->burst_bclkdiv, 32);
  break;
 case 32:
  dac33->fifo_size = DAC33_FIFO_SIZE_24BIT;
  dac33->burst_rate = CALC_BURST_RATE(dac33->burst_bclkdiv, 64);
  break;
 default:
  dev_err(component->dev, "unsupported width %d\n",
   params_width(params));
  return -EINVAL;
 }

 return 0;
}
