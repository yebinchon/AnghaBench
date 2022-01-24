#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tegra_alc5632 {int /*<<< orphan*/  gpio_hp_det; } ;
struct snd_soc_pcm_runtime {TYPE_3__* card; } ;
struct TYPE_6__ {int /*<<< orphan*/  dapm; } ;
struct TYPE_5__ {int /*<<< orphan*/  gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SND_JACK_HEADSET ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct tegra_alc5632* FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 TYPE_1__ tegra_alc5632_hp_jack_gpio ; 
 int /*<<< orphan*/  tegra_alc5632_hs_jack ; 
 int /*<<< orphan*/  tegra_alc5632_hs_jack_pins ; 

__attribute__((used)) static int FUNC6(struct snd_soc_pcm_runtime *rtd)
{
	int ret;
	struct tegra_alc5632 *machine = FUNC2(rtd->card);

	ret = FUNC3(rtd->card, "Headset Jack",
				    SND_JACK_HEADSET,
				    &tegra_alc5632_hs_jack,
				    tegra_alc5632_hs_jack_pins,
				    FUNC0(tegra_alc5632_hs_jack_pins));
	if (ret)
		return ret;

	if (FUNC1(machine->gpio_hp_det)) {
		tegra_alc5632_hp_jack_gpio.gpio = machine->gpio_hp_det;
		FUNC5(&tegra_alc5632_hs_jack,
						1,
						&tegra_alc5632_hp_jack_gpio);
	}

	FUNC4(&rtd->card->dapm, "MICBIAS1");

	return 0;
}