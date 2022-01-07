
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_2__* card; TYPE_1__* codec_dai; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_4__ {int dapm; } ;
struct TYPE_3__ {struct snd_soc_component* component; } ;


 int ARRAY_SIZE (int ) ;
 int SND_JACK_BTN_0 ;
 int SND_JACK_HEADSET ;
 int broxton_headset ;
 int broxton_headset_pins ;
 int rt298_mic_detect (struct snd_soc_component*,int *) ;
 int snd_soc_card_jack_new (TYPE_2__*,char*,int,int *,int ,int ) ;
 int snd_soc_dapm_ignore_suspend (int *,char*) ;

__attribute__((used)) static int broxton_rt298_codec_init(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_soc_component *component = rtd->codec_dai->component;
 int ret = 0;

 ret = snd_soc_card_jack_new(rtd->card, "Headset",
  SND_JACK_HEADSET | SND_JACK_BTN_0,
  &broxton_headset,
  broxton_headset_pins, ARRAY_SIZE(broxton_headset_pins));

 if (ret)
  return ret;

 rt298_mic_detect(component, &broxton_headset);

 snd_soc_dapm_ignore_suspend(&rtd->card->dapm, "SoC DMIC");

 return 0;
}
