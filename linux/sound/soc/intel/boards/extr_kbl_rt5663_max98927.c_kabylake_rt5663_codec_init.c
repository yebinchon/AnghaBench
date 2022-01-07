
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int dev; TYPE_1__* codec_dai; int card; } ;
struct snd_soc_jack {int jack; } ;
struct snd_soc_component {int dummy; } ;
struct kbl_rt5663_private {struct snd_soc_jack kabylake_headset; } ;
struct TYPE_2__ {struct snd_soc_component* component; } ;


 int KEY_PLAYPAUSE ;
 int KEY_VOICECOMMAND ;
 int KEY_VOLUMEDOWN ;
 int KEY_VOLUMEUP ;
 int SND_JACK_BTN_0 ;
 int SND_JACK_BTN_1 ;
 int SND_JACK_BTN_2 ;
 int SND_JACK_BTN_3 ;
 int SND_JACK_HEADSET ;
 int dev_err (int ,char*,int) ;
 int kabylake_audio_card ;
 int snd_jack_set_key (int ,int,int ) ;
 struct kbl_rt5663_private* snd_soc_card_get_drvdata (int ) ;
 int snd_soc_card_jack_new (int ,char*,int,struct snd_soc_jack*,int *,int ) ;
 int snd_soc_component_set_jack (struct snd_soc_component*,struct snd_soc_jack*,int *) ;

__attribute__((used)) static int kabylake_rt5663_codec_init(struct snd_soc_pcm_runtime *rtd)
{
 int ret;
 struct kbl_rt5663_private *ctx = snd_soc_card_get_drvdata(rtd->card);
 struct snd_soc_component *component = rtd->codec_dai->component;
 struct snd_soc_jack *jack;





 ret = snd_soc_card_jack_new(kabylake_audio_card, "Headset Jack",
   SND_JACK_HEADSET | SND_JACK_BTN_0 | SND_JACK_BTN_1 |
   SND_JACK_BTN_2 | SND_JACK_BTN_3, &ctx->kabylake_headset,
   ((void*)0), 0);
 if (ret) {
  dev_err(rtd->dev, "Headset Jack creation failed %d\n", ret);
  return ret;
 }

 jack = &ctx->kabylake_headset;
 snd_jack_set_key(jack->jack, SND_JACK_BTN_0, KEY_PLAYPAUSE);
 snd_jack_set_key(jack->jack, SND_JACK_BTN_1, KEY_VOICECOMMAND);
 snd_jack_set_key(jack->jack, SND_JACK_BTN_2, KEY_VOLUMEUP);
 snd_jack_set_key(jack->jack, SND_JACK_BTN_3, KEY_VOLUMEDOWN);

 snd_soc_component_set_jack(component, &ctx->kabylake_headset, ((void*)0));

 return ret;
}
