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
struct snd_soc_pcm_runtime {int /*<<< orphan*/  card; } ;
struct rk_drvdata {int /*<<< orphan*/  gpio_hp_det; } ;
struct TYPE_3__ {int /*<<< orphan*/  gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SND_JACK_HEADPHONE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  headphone_jack ; 
 int /*<<< orphan*/  headphone_jack_pins ; 
 TYPE_1__ rk_hp_jack_gpio ; 
 struct rk_drvdata* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_pcm_runtime *runtime)
{
	struct rk_drvdata *machine = FUNC2(runtime->card);

	/* Enable Headset Jack detection */
	if (FUNC1(machine->gpio_hp_det)) {
		FUNC3(runtime->card, "Headphone Jack",
				      SND_JACK_HEADPHONE, &headphone_jack,
				      headphone_jack_pins,
				      FUNC0(headphone_jack_pins));
		rk_hp_jack_gpio.gpio = machine->gpio_hp_det;
		FUNC4(&headphone_jack, 1, &rk_hp_jack_gpio);
	}

	return 0;
}