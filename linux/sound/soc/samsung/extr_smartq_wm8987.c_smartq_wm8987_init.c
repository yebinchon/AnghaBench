
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* card; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct TYPE_2__ {struct snd_soc_dapm_context dapm; } ;


 int ARRAY_SIZE (int ) ;
 int SND_JACK_HEADPHONE ;
 int smartq_jack ;
 int smartq_jack_gpios ;
 int smartq_jack_pins ;
 int snd_soc_card_jack_new (TYPE_1__*,char*,int ,int *,int ,int ) ;
 int snd_soc_dapm_nc_pin (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_jack_add_gpios (int *,int ,int ) ;

__attribute__((used)) static int smartq_wm8987_init(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_soc_dapm_context *dapm = &rtd->card->dapm;
 int err = 0;


 snd_soc_dapm_nc_pin(dapm, "LINPUT1");
 snd_soc_dapm_nc_pin(dapm, "RINPUT1");
 snd_soc_dapm_nc_pin(dapm, "OUT3");
 snd_soc_dapm_nc_pin(dapm, "ROUT1");


 err = snd_soc_card_jack_new(rtd->card, "Headphone Jack",
        SND_JACK_HEADPHONE, &smartq_jack,
        smartq_jack_pins,
        ARRAY_SIZE(smartq_jack_pins));
 if (err)
  return err;

 err = snd_soc_jack_add_gpios(&smartq_jack,
         ARRAY_SIZE(smartq_jack_gpios),
         smartq_jack_gpios);

 return err;
}
