
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tm2_machine_priv {unsigned int sysclk_rate; } ;
struct snd_soc_pcm_runtime {int card; TYPE_1__* codec_dai; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {struct snd_soc_component* component; } ;


 int EINVAL ;
 int dev_err (int ,char*,int) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 struct tm2_machine_priv* snd_soc_card_get_drvdata (int ) ;
 int tm2_start_sysclk (int ) ;

__attribute__((used)) static int tm2_aif1_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_component *component = rtd->codec_dai->component;
 struct tm2_machine_priv *priv = snd_soc_card_get_drvdata(rtd->card);

 switch (params_rate(params)) {
 case 4000:
 case 8000:
 case 12000:
 case 16000:
 case 24000:
 case 32000:
 case 48000:
 case 96000:
 case 192000:

  priv->sysclk_rate = 147456000U;
  break;
 case 11025:
 case 22050:
 case 44100:
 case 88200:
 case 176400:

  priv->sysclk_rate = 135475200U;
  break;
 default:
  dev_err(component->dev, "Not supported sample rate: %d\n",
   params_rate(params));
  return -EINVAL;
 }

 return tm2_start_sysclk(rtd->card);
}
