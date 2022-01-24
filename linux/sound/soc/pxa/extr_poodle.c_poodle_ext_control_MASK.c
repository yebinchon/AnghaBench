#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dapm_context {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ POODLE_HP ; 
 int /*<<< orphan*/  POODLE_LOCOMO_GPIO_MUTE_L ; 
 int /*<<< orphan*/  POODLE_LOCOMO_GPIO_MUTE_R ; 
 scalar_t__ POODLE_SPK_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ poodle_jack_func ; 
 TYPE_1__ poodle_locomo_device ; 
 scalar_t__ poodle_spk_func ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_dapm_context*) ; 

__attribute__((used)) static void FUNC4(struct snd_soc_dapm_context *dapm)
{
	/* set up jack connection */
	if (poodle_jack_func == POODLE_HP) {
		/* set = unmute headphone */
		FUNC0(&poodle_locomo_device.dev,
			POODLE_LOCOMO_GPIO_MUTE_L, 1);
		FUNC0(&poodle_locomo_device.dev,
			POODLE_LOCOMO_GPIO_MUTE_R, 1);
		FUNC2(dapm, "Headphone Jack");
	} else {
		FUNC0(&poodle_locomo_device.dev,
			POODLE_LOCOMO_GPIO_MUTE_L, 0);
		FUNC0(&poodle_locomo_device.dev,
			POODLE_LOCOMO_GPIO_MUTE_R, 0);
		FUNC1(dapm, "Headphone Jack");
	}

	/* set the enpoints to their new connetion states */
	if (poodle_spk_func == POODLE_SPK_ON)
		FUNC2(dapm, "Ext Spk");
	else
		FUNC1(dapm, "Ext Spk");

	/* signal a DAPM event */
	FUNC3(dapm);
}