
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* card; int dev; TYPE_2__* codec_dai; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_4__ {struct snd_soc_component* component; } ;
struct TYPE_3__ {int dapm; } ;


 int SND_JACK_BTN_0 ;
 int SND_JACK_BTN_1 ;
 int SND_JACK_BTN_2 ;
 int SND_JACK_BTN_3 ;
 int SND_JACK_HEADSET ;
 int dev_err (int ,char*,int) ;
 int nau8825_enable_jack_detect (struct snd_soc_component*,int *) ;
 int skylake_audio_card ;
 int skylake_headset ;
 int snd_soc_card_jack_new (int *,char*,int,int *,int *,int ) ;
 int snd_soc_dapm_ignore_suspend (int *,char*) ;

__attribute__((used)) static int skylake_nau8825_codec_init(struct snd_soc_pcm_runtime *rtd)
{
 int ret;
 struct snd_soc_component *component = rtd->codec_dai->component;





 ret = snd_soc_card_jack_new(&skylake_audio_card, "Headset Jack",
  SND_JACK_HEADSET | SND_JACK_BTN_0 | SND_JACK_BTN_1 |
  SND_JACK_BTN_2 | SND_JACK_BTN_3, &skylake_headset,
  ((void*)0), 0);
 if (ret) {
  dev_err(rtd->dev, "Headset Jack creation failed %d\n", ret);
  return ret;
 }

 nau8825_enable_jack_detect(component, &skylake_headset);

 snd_soc_dapm_ignore_suspend(&rtd->card->dapm, "SoC DMIC");

 return ret;
}
