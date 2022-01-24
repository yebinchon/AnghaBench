#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tegra_max98090 {int /*<<< orphan*/  gpio_mic_det; int /*<<< orphan*/  gpio_hp_det; } ;
struct snd_soc_pcm_runtime {int /*<<< orphan*/  card; } ;
struct TYPE_4__ {int /*<<< orphan*/  gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SND_JACK_HEADPHONE ; 
 int /*<<< orphan*/  SND_JACK_MICROPHONE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct tegra_max98090* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  tegra_max98090_hp_jack ; 
 TYPE_1__ tegra_max98090_hp_jack_gpio ; 
 int /*<<< orphan*/  tegra_max98090_hp_jack_pins ; 
 int /*<<< orphan*/  tegra_max98090_mic_jack ; 
 TYPE_1__ tegra_max98090_mic_jack_gpio ; 
 int /*<<< orphan*/  tegra_max98090_mic_jack_pins ; 

__attribute__((used)) static int FUNC5(struct snd_soc_pcm_runtime *rtd)
{
	struct tegra_max98090 *machine = FUNC2(rtd->card);

	if (FUNC1(machine->gpio_hp_det)) {
		FUNC3(rtd->card, "Headphones",
				      SND_JACK_HEADPHONE,
				      &tegra_max98090_hp_jack,
				      tegra_max98090_hp_jack_pins,
				      FUNC0(tegra_max98090_hp_jack_pins));

		tegra_max98090_hp_jack_gpio.gpio = machine->gpio_hp_det;
		FUNC4(&tegra_max98090_hp_jack,
					1,
					&tegra_max98090_hp_jack_gpio);
	}

	if (FUNC1(machine->gpio_mic_det)) {
		FUNC3(rtd->card, "Mic Jack",
				      SND_JACK_MICROPHONE,
				      &tegra_max98090_mic_jack,
				      tegra_max98090_mic_jack_pins,
				      FUNC0(tegra_max98090_mic_jack_pins));

		tegra_max98090_mic_jack_gpio.gpio = machine->gpio_mic_det;
		FUNC4(&tegra_max98090_mic_jack,
				       1,
				       &tegra_max98090_mic_jack_gpio);
	}

	return 0;
}