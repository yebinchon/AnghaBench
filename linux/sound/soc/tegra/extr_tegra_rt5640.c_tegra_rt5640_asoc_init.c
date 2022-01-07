
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tegra_rt5640 {int gpio_hp_det_flags; int gpio_hp_det; } ;
struct snd_soc_pcm_runtime {int card; } ;
struct TYPE_3__ {int invert; int gpio; } ;


 int ARRAY_SIZE (int ) ;
 int OF_GPIO_ACTIVE_LOW ;
 int SND_JACK_HEADPHONE ;
 scalar_t__ gpio_is_valid (int ) ;
 struct tegra_rt5640* snd_soc_card_get_drvdata (int ) ;
 int snd_soc_card_jack_new (int ,char*,int ,int *,int ,int ) ;
 int snd_soc_jack_add_gpios (int *,int,TYPE_1__*) ;
 int tegra_rt5640_hp_jack ;
 TYPE_1__ tegra_rt5640_hp_jack_gpio ;
 int tegra_rt5640_hp_jack_pins ;

__attribute__((used)) static int tegra_rt5640_asoc_init(struct snd_soc_pcm_runtime *rtd)
{
 struct tegra_rt5640 *machine = snd_soc_card_get_drvdata(rtd->card);

 snd_soc_card_jack_new(rtd->card, "Headphones", SND_JACK_HEADPHONE,
         &tegra_rt5640_hp_jack, tegra_rt5640_hp_jack_pins,
         ARRAY_SIZE(tegra_rt5640_hp_jack_pins));

 if (gpio_is_valid(machine->gpio_hp_det)) {
  tegra_rt5640_hp_jack_gpio.gpio = machine->gpio_hp_det;
  tegra_rt5640_hp_jack_gpio.invert =
   !!(machine->gpio_hp_det_flags & OF_GPIO_ACTIVE_LOW);
  snd_soc_jack_add_gpios(&tegra_rt5640_hp_jack,
      1,
      &tegra_rt5640_hp_jack_gpio);
 }

 return 0;
}
