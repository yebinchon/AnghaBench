
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
 int rt286_mic_detect (struct snd_soc_component*,int *) ;
 int skylake_headset ;
 int skylake_headset_pins ;
 int snd_soc_card_jack_new (TYPE_2__*,char*,int,int *,int ,int ) ;
 int snd_soc_dapm_ignore_suspend (int *,char*) ;

__attribute__((used)) static int skylake_rt286_codec_init(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_soc_component *component = rtd->codec_dai->component;
 int ret;

 ret = snd_soc_card_jack_new(rtd->card, "Headset",
  SND_JACK_HEADSET | SND_JACK_BTN_0,
  &skylake_headset,
  skylake_headset_pins, ARRAY_SIZE(skylake_headset_pins));

 if (ret)
  return ret;

 rt286_mic_detect(component, &skylake_headset);

 snd_soc_dapm_ignore_suspend(&rtd->card->dapm, "SoC DMIC");

 return 0;
}
