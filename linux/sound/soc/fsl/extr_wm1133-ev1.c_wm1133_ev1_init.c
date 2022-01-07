
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
 int SND_JACK_HEADPHONE ;
 int SND_JACK_MICROPHONE ;
 int WM8350_JDR ;
 int hp_jack ;
 int hp_jack_pins ;
 int mic_jack ;
 int mic_jack_pins ;
 int snd_soc_card_jack_new (TYPE_2__*,char*,int,int *,int ,int ) ;
 int snd_soc_dapm_force_enable_pin (int *,char*) ;
 int wm8350_hp_jack_detect (struct snd_soc_component*,int ,int *,int) ;
 int wm8350_mic_jack_detect (struct snd_soc_component*,int *,int,int) ;

__attribute__((used)) static int wm1133_ev1_init(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_soc_component *component = rtd->codec_dai->component;


 snd_soc_card_jack_new(rtd->card, "Headphone", SND_JACK_HEADPHONE,
         &hp_jack, hp_jack_pins, ARRAY_SIZE(hp_jack_pins));
 wm8350_hp_jack_detect(component, WM8350_JDR, &hp_jack, SND_JACK_HEADPHONE);


 snd_soc_card_jack_new(rtd->card, "Microphone",
         SND_JACK_MICROPHONE | SND_JACK_BTN_0, &mic_jack,
         mic_jack_pins, ARRAY_SIZE(mic_jack_pins));
 wm8350_mic_jack_detect(component, &mic_jack, SND_JACK_MICROPHONE,
          SND_JACK_BTN_0);

 snd_soc_dapm_force_enable_pin(&rtd->card->dapm, "Mic Bias");

 return 0;
}
