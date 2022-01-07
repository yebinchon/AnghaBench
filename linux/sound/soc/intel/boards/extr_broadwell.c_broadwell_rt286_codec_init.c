
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int card; TYPE_1__* codec_dai; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_2__ {struct snd_soc_component* component; } ;


 int ARRAY_SIZE (int ) ;
 int SND_JACK_BTN_0 ;
 int SND_JACK_HEADSET ;
 int broadwell_headset ;
 int broadwell_headset_pins ;
 int rt286_mic_detect (struct snd_soc_component*,int *) ;
 int snd_soc_card_jack_new (int ,char*,int,int *,int ,int ) ;

__attribute__((used)) static int broadwell_rt286_codec_init(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_soc_component *component = rtd->codec_dai->component;
 int ret = 0;
 ret = snd_soc_card_jack_new(rtd->card, "Headset",
  SND_JACK_HEADSET | SND_JACK_BTN_0, &broadwell_headset,
  broadwell_headset_pins, ARRAY_SIZE(broadwell_headset_pins));
 if (ret)
  return ret;

 rt286_mic_detect(component, &broadwell_headset);
 return 0;
}
