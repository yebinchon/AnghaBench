
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dev; int card; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_jack {int jack; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct cht_mc_private {struct snd_soc_jack jack; } ;


 int ARRAY_SIZE (int ) ;
 int KEY_MEDIA ;
 int KEY_VOICECOMMAND ;
 int KEY_VOLUMEDOWN ;
 int KEY_VOLUMEUP ;
 int SND_JACK_BTN_0 ;
 int SND_JACK_BTN_1 ;
 int SND_JACK_BTN_2 ;
 int SND_JACK_BTN_3 ;
 int SND_JACK_HEADSET ;
 int cht_bsw_jack_pins ;
 int dev_err (int ,char*,int) ;
 int nau8824_enable_jack_detect (struct snd_soc_component*,struct snd_soc_jack*) ;
 int snd_jack_set_key (int ,int,int ) ;
 struct cht_mc_private* snd_soc_card_get_drvdata (int ) ;
 int snd_soc_card_jack_new (int ,char*,int,struct snd_soc_jack*,int ,int ) ;
 int snd_soc_dai_set_tdm_slot (struct snd_soc_dai*,int,int,int,int) ;

__attribute__((used)) static int cht_codec_init(struct snd_soc_pcm_runtime *runtime)
{
 struct cht_mc_private *ctx = snd_soc_card_get_drvdata(runtime->card);
 struct snd_soc_jack *jack = &ctx->jack;
 struct snd_soc_dai *codec_dai = runtime->codec_dai;
 struct snd_soc_component *component = codec_dai->component;
 int ret, jack_type;


 ret = snd_soc_dai_set_tdm_slot(codec_dai, 0xf, 0x1, 4, 24);
 if (ret < 0) {
  dev_err(runtime->dev, "can't set codec TDM slot %d\n", ret);
  return ret;
 }







 jack_type = SND_JACK_HEADSET | SND_JACK_BTN_0 | SND_JACK_BTN_1 |
  SND_JACK_BTN_2 | SND_JACK_BTN_3;
 ret = snd_soc_card_jack_new(runtime->card, "Headset", jack_type, jack,
  cht_bsw_jack_pins, ARRAY_SIZE(cht_bsw_jack_pins));
 if (ret) {
  dev_err(runtime->dev,
   "Headset Jack creation failed %d\n", ret);
  return ret;
 }
 snd_jack_set_key(jack->jack, SND_JACK_BTN_0, KEY_MEDIA);
 snd_jack_set_key(jack->jack, SND_JACK_BTN_1, KEY_VOICECOMMAND);
 snd_jack_set_key(jack->jack, SND_JACK_BTN_2, KEY_VOLUMEUP);
 snd_jack_set_key(jack->jack, SND_JACK_BTN_3, KEY_VOLUMEDOWN);

 nau8824_enable_jack_detect(component, jack);

 return ret;
}
