
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tegra_wm8903 {int gpio_hp_det; } ;
struct snd_soc_pcm_runtime {struct snd_soc_card* card; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_soc_card {int dapm; } ;
struct TYPE_3__ {int gpio; } ;


 int ARRAY_SIZE (int ) ;
 int SND_JACK_HEADPHONE ;
 int SND_JACK_MICROPHONE ;
 scalar_t__ gpio_is_valid (int ) ;
 struct tegra_wm8903* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 int snd_soc_card_jack_new (struct snd_soc_card*,char*,int ,int *,int ,int ) ;
 int snd_soc_dapm_force_enable_pin (int *,char*) ;
 int snd_soc_jack_add_gpios (int *,int,TYPE_1__*) ;
 int tegra_wm8903_hp_jack ;
 TYPE_1__ tegra_wm8903_hp_jack_gpio ;
 int tegra_wm8903_hp_jack_pins ;
 int tegra_wm8903_mic_jack ;
 int tegra_wm8903_mic_jack_pins ;
 int wm8903_mic_detect (struct snd_soc_component*,int *,int ,int ) ;

__attribute__((used)) static int tegra_wm8903_init(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 struct snd_soc_component *component = codec_dai->component;
 struct snd_soc_card *card = rtd->card;
 struct tegra_wm8903 *machine = snd_soc_card_get_drvdata(card);

 if (gpio_is_valid(machine->gpio_hp_det)) {
  tegra_wm8903_hp_jack_gpio.gpio = machine->gpio_hp_det;
  snd_soc_card_jack_new(rtd->card, "Headphone Jack",
          SND_JACK_HEADPHONE, &tegra_wm8903_hp_jack,
          tegra_wm8903_hp_jack_pins,
          ARRAY_SIZE(tegra_wm8903_hp_jack_pins));
  snd_soc_jack_add_gpios(&tegra_wm8903_hp_jack,
     1,
     &tegra_wm8903_hp_jack_gpio);
 }

 snd_soc_card_jack_new(rtd->card, "Mic Jack", SND_JACK_MICROPHONE,
         &tegra_wm8903_mic_jack,
         tegra_wm8903_mic_jack_pins,
         ARRAY_SIZE(tegra_wm8903_mic_jack_pins));
 wm8903_mic_detect(component, &tegra_wm8903_mic_jack, SND_JACK_MICROPHONE,
    0);

 snd_soc_dapm_force_enable_pin(&card->dapm, "MICBIAS");

 return 0;
}
