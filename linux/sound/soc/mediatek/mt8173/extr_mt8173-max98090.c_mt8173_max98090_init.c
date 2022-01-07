
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* codec_dai; struct snd_soc_card* card; } ;
struct snd_soc_component {int dummy; } ;
struct snd_soc_card {int dev; } ;
struct TYPE_2__ {struct snd_soc_component* component; } ;


 int ARRAY_SIZE (int ) ;
 int SND_JACK_HEADPHONE ;
 int dev_err (int ,char*,int) ;
 int max98090_mic_detect (struct snd_soc_component*,int *) ;
 int mt8173_max98090_jack ;
 int mt8173_max98090_jack_pins ;
 int snd_soc_card_jack_new (struct snd_soc_card*,char*,int ,int *,int ,int ) ;

__attribute__((used)) static int mt8173_max98090_init(struct snd_soc_pcm_runtime *runtime)
{
 int ret;
 struct snd_soc_card *card = runtime->card;
 struct snd_soc_component *component = runtime->codec_dai->component;


 ret = snd_soc_card_jack_new(card, "Headphone", SND_JACK_HEADPHONE,
        &mt8173_max98090_jack,
        mt8173_max98090_jack_pins,
        ARRAY_SIZE(mt8173_max98090_jack_pins));
 if (ret) {
  dev_err(card->dev, "Can't create a new Jack %d\n", ret);
  return ret;
 }

 return max98090_mic_detect(component, &mt8173_max98090_jack);
}
