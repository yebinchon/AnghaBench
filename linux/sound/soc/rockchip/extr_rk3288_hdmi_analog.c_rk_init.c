
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int card; } ;
struct rk_drvdata {int gpio_hp_det; } ;
struct TYPE_3__ {int gpio; } ;


 int ARRAY_SIZE (int ) ;
 int SND_JACK_HEADPHONE ;
 scalar_t__ gpio_is_valid (int ) ;
 int headphone_jack ;
 int headphone_jack_pins ;
 TYPE_1__ rk_hp_jack_gpio ;
 struct rk_drvdata* snd_soc_card_get_drvdata (int ) ;
 int snd_soc_card_jack_new (int ,char*,int ,int *,int ,int ) ;
 int snd_soc_jack_add_gpios (int *,int,TYPE_1__*) ;

__attribute__((used)) static int rk_init(struct snd_soc_pcm_runtime *runtime)
{
 struct rk_drvdata *machine = snd_soc_card_get_drvdata(runtime->card);


 if (gpio_is_valid(machine->gpio_hp_det)) {
  snd_soc_card_jack_new(runtime->card, "Headphone Jack",
          SND_JACK_HEADPHONE, &headphone_jack,
          headphone_jack_pins,
          ARRAY_SIZE(headphone_jack_pins));
  rk_hp_jack_gpio.gpio = machine->gpio_hp_det;
  snd_soc_jack_add_gpios(&headphone_jack, 1, &rk_hp_jack_gpio);
 }

 return 0;
}
