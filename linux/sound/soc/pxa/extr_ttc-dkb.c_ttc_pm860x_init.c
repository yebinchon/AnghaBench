
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
 int SND_JACK_BTN_1 ;
 int SND_JACK_BTN_2 ;
 int SND_JACK_HEADPHONE ;
 int SND_JACK_MICROPHONE ;
 int hs_jack ;
 int hs_jack_pins ;
 int mic_jack ;
 int mic_jack_pins ;
 int pm860x_hs_jack_detect (struct snd_soc_component*,int *,int,int,int,int) ;
 int pm860x_mic_jack_detect (struct snd_soc_component*,int *,int) ;
 int snd_soc_card_jack_new (int ,char*,int,int *,int ,int ) ;

__attribute__((used)) static int ttc_pm860x_init(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_soc_component *component = rtd->codec_dai->component;


 snd_soc_card_jack_new(rtd->card, "Headphone Jack", SND_JACK_HEADPHONE |
         SND_JACK_BTN_0 | SND_JACK_BTN_1 | SND_JACK_BTN_2,
         &hs_jack, hs_jack_pins, ARRAY_SIZE(hs_jack_pins));
 snd_soc_card_jack_new(rtd->card, "Microphone Jack", SND_JACK_MICROPHONE,
         &mic_jack, mic_jack_pins,
         ARRAY_SIZE(mic_jack_pins));


 pm860x_hs_jack_detect(component, &hs_jack, SND_JACK_HEADPHONE,
         SND_JACK_BTN_0, SND_JACK_BTN_1, SND_JACK_BTN_2);
 pm860x_mic_jack_detect(component, &hs_jack, SND_JACK_MICROPHONE);

 return 0;
}
