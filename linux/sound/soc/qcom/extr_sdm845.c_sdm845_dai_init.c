
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {struct snd_soc_dai* cpu_dai; struct snd_soc_dai* codec_dai; struct snd_soc_card* card; } ;
struct snd_soc_dai {int id; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_soc_card {int dev; } ;
struct snd_jack {int private_free; struct snd_soc_component* private_data; } ;
struct TYPE_3__ {struct snd_jack* jack; } ;
struct sdm845_snd_data {int jack_setup; TYPE_1__ jack; } ;


 int ENOTSUPP ;
 int KEY_PLAYPAUSE ;
 int KEY_VOICECOMMAND ;
 int KEY_VOLUMEDOWN ;
 int KEY_VOLUMEUP ;

 int SND_JACK_BTN_0 ;
 int SND_JACK_BTN_1 ;
 int SND_JACK_BTN_2 ;
 int SND_JACK_BTN_3 ;
 int SND_JACK_HEADPHONE ;
 int SND_JACK_HEADSET ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*,int) ;
 int sdm845_jack_free ;
 int snd_jack_set_key (struct snd_jack*,int,int ) ;
 struct sdm845_snd_data* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 int snd_soc_card_jack_new (struct snd_soc_card*,char*,int,TYPE_1__*,int *,int ) ;
 int snd_soc_component_set_jack (struct snd_soc_component*,TYPE_1__*,int *) ;

__attribute__((used)) static int sdm845_dai_init(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_soc_component *component;
 struct snd_soc_card *card = rtd->card;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
 struct sdm845_snd_data *pdata = snd_soc_card_get_drvdata(card);
 struct snd_jack *jack;
 int rval;

 if (!pdata->jack_setup) {
  rval = snd_soc_card_jack_new(card, "Headset Jack",
    SND_JACK_HEADSET |
    SND_JACK_HEADPHONE |
    SND_JACK_BTN_0 | SND_JACK_BTN_1 |
    SND_JACK_BTN_2 | SND_JACK_BTN_3,
    &pdata->jack, ((void*)0), 0);

  if (rval < 0) {
   dev_err(card->dev, "Unable to add Headphone Jack\n");
   return rval;
  }

  jack = pdata->jack.jack;

  snd_jack_set_key(jack, SND_JACK_BTN_0, KEY_PLAYPAUSE);
  snd_jack_set_key(jack, SND_JACK_BTN_1, KEY_VOICECOMMAND);
  snd_jack_set_key(jack, SND_JACK_BTN_2, KEY_VOLUMEUP);
  snd_jack_set_key(jack, SND_JACK_BTN_3, KEY_VOLUMEDOWN);
  pdata->jack_setup = 1;
 }

 switch (cpu_dai->id) {
 case 128:
  jack = pdata->jack.jack;
  component = codec_dai->component;

  jack->private_data = component;
  jack->private_free = sdm845_jack_free;
  rval = snd_soc_component_set_jack(component,
        &pdata->jack, ((void*)0));
  if (rval != 0 && rval != -ENOTSUPP) {
   dev_warn(card->dev, "Failed to set jack: %d\n", rval);
   return rval;
  }
  break;
 default:
  break;
 }

 return 0;
}
