#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tegra_wm8903 {int /*<<< orphan*/  gpio_hp_det; } ;
struct snd_soc_pcm_runtime {struct snd_soc_card* card; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_soc_card {int /*<<< orphan*/  dapm; } ;
struct TYPE_3__ {int /*<<< orphan*/  gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SND_JACK_HEADPHONE ; 
 int /*<<< orphan*/  SND_JACK_MICROPHONE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct tegra_wm8903* FUNC2 (struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_card*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  tegra_wm8903_hp_jack ; 
 TYPE_1__ tegra_wm8903_hp_jack_gpio ; 
 int /*<<< orphan*/  tegra_wm8903_hp_jack_pins ; 
 int /*<<< orphan*/  tegra_wm8903_mic_jack ; 
 int /*<<< orphan*/  tegra_wm8903_mic_jack_pins ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_pcm_runtime *rtd)
{
	struct snd_soc_dai *codec_dai = rtd->codec_dai;
	struct snd_soc_component *component = codec_dai->component;
	struct snd_soc_card *card = rtd->card;
	struct tegra_wm8903 *machine = FUNC2(card);

	if (FUNC1(machine->gpio_hp_det)) {
		tegra_wm8903_hp_jack_gpio.gpio = machine->gpio_hp_det;
		FUNC3(rtd->card, "Headphone Jack",
				      SND_JACK_HEADPHONE, &tegra_wm8903_hp_jack,
				      tegra_wm8903_hp_jack_pins,
				      FUNC0(tegra_wm8903_hp_jack_pins));
		FUNC5(&tegra_wm8903_hp_jack,
					1,
					&tegra_wm8903_hp_jack_gpio);
	}

	FUNC3(rtd->card, "Mic Jack", SND_JACK_MICROPHONE,
			      &tegra_wm8903_mic_jack,
			      tegra_wm8903_mic_jack_pins,
			      FUNC0(tegra_wm8903_mic_jack_pins));
	FUNC6(component, &tegra_wm8903_mic_jack, SND_JACK_MICROPHONE,
				0);

	FUNC4(&card->dapm, "MICBIAS");

	return 0;
}