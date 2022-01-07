
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int card; } ;


 int ARRAY_SIZE (int ) ;
 int SND_JACK_HEADPHONE ;
 int hs_jack ;
 int hs_jack_gpios ;
 int hs_jack_pins ;
 int snd_soc_card_jack_new (int ,char*,int ,int *,int ,int ) ;
 int snd_soc_jack_add_gpios (int *,int ,int ) ;

__attribute__((used)) static int palm27x_ac97_init(struct snd_soc_pcm_runtime *rtd)
{
 int err;


 err = snd_soc_card_jack_new(rtd->card, "Headphone Jack",
        SND_JACK_HEADPHONE, &hs_jack, hs_jack_pins,
        ARRAY_SIZE(hs_jack_pins));
 if (err)
  return err;

 err = snd_soc_jack_add_gpios(&hs_jack, ARRAY_SIZE(hs_jack_gpios),
    hs_jack_gpios);

 return err;
}
