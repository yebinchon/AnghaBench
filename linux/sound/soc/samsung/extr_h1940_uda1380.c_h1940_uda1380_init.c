
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int card; } ;


 int ARRAY_SIZE (int ) ;
 int SND_JACK_HEADPHONE ;
 int hp_jack ;
 int hp_jack_gpios ;
 int hp_jack_pins ;
 int snd_soc_card_jack_new (int ,char*,int ,int *,int ,int ) ;
 int snd_soc_jack_add_gpios (int *,int ,int ) ;

__attribute__((used)) static int h1940_uda1380_init(struct snd_soc_pcm_runtime *rtd)
{
 snd_soc_card_jack_new(rtd->card, "Headphone Jack", SND_JACK_HEADPHONE,
  &hp_jack, hp_jack_pins, ARRAY_SIZE(hp_jack_pins));

 snd_soc_jack_add_gpios(&hp_jack, ARRAY_SIZE(hp_jack_gpios),
  hp_jack_gpios);

 return 0;
}
