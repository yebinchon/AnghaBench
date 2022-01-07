
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct tegra_max98090 {int gpio_mic_det; int gpio_hp_det; } ;
struct snd_soc_pcm_runtime {int card; } ;
struct TYPE_4__ {int gpio; } ;


 int ARRAY_SIZE (int ) ;
 int SND_JACK_HEADPHONE ;
 int SND_JACK_MICROPHONE ;
 scalar_t__ gpio_is_valid (int ) ;
 struct tegra_max98090* snd_soc_card_get_drvdata (int ) ;
 int snd_soc_card_jack_new (int ,char*,int ,int *,int ,int ) ;
 int snd_soc_jack_add_gpios (int *,int,TYPE_1__*) ;
 int tegra_max98090_hp_jack ;
 TYPE_1__ tegra_max98090_hp_jack_gpio ;
 int tegra_max98090_hp_jack_pins ;
 int tegra_max98090_mic_jack ;
 TYPE_1__ tegra_max98090_mic_jack_gpio ;
 int tegra_max98090_mic_jack_pins ;

__attribute__((used)) static int tegra_max98090_asoc_init(struct snd_soc_pcm_runtime *rtd)
{
 struct tegra_max98090 *machine = snd_soc_card_get_drvdata(rtd->card);

 if (gpio_is_valid(machine->gpio_hp_det)) {
  snd_soc_card_jack_new(rtd->card, "Headphones",
          SND_JACK_HEADPHONE,
          &tegra_max98090_hp_jack,
          tegra_max98090_hp_jack_pins,
          ARRAY_SIZE(tegra_max98090_hp_jack_pins));

  tegra_max98090_hp_jack_gpio.gpio = machine->gpio_hp_det;
  snd_soc_jack_add_gpios(&tegra_max98090_hp_jack,
     1,
     &tegra_max98090_hp_jack_gpio);
 }

 if (gpio_is_valid(machine->gpio_mic_det)) {
  snd_soc_card_jack_new(rtd->card, "Mic Jack",
          SND_JACK_MICROPHONE,
          &tegra_max98090_mic_jack,
          tegra_max98090_mic_jack_pins,
          ARRAY_SIZE(tegra_max98090_mic_jack_pins));

  tegra_max98090_mic_jack_gpio.gpio = machine->gpio_mic_det;
  snd_soc_jack_add_gpios(&tegra_max98090_mic_jack,
           1,
           &tegra_max98090_mic_jack_gpio);
 }

 return 0;
}
