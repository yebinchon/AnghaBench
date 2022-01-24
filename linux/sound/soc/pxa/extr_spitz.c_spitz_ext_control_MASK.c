#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snd_soc_dapm_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPITZ_GPIO_MUTE_L ; 
 int /*<<< orphan*/  SPITZ_GPIO_MUTE_R ; 
#define  SPITZ_HEADSET 132 
#define  SPITZ_HP 131 
#define  SPITZ_HP_OFF 130 
#define  SPITZ_LINE 129 
#define  SPITZ_MIC 128 
 scalar_t__ SPITZ_SPK_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dapm_context*) ; 
 int spitz_jack_func ; 
 scalar_t__ spitz_spk_func ; 

__attribute__((used)) static void FUNC6(struct snd_soc_dapm_context *dapm)
{
	FUNC3(dapm);

	if (spitz_spk_func == SPITZ_SPK_ON)
		FUNC2(dapm, "Ext Spk");
	else
		FUNC1(dapm, "Ext Spk");

	/* set up jack connection */
	switch (spitz_jack_func) {
	case SPITZ_HP:
		/* enable and unmute hp jack, disable mic bias */
		FUNC1(dapm, "Headset Jack");
		FUNC1(dapm, "Mic Jack");
		FUNC1(dapm, "Line Jack");
		FUNC2(dapm, "Headphone Jack");
		FUNC0(SPITZ_GPIO_MUTE_L, 1);
		FUNC0(SPITZ_GPIO_MUTE_R, 1);
		break;
	case SPITZ_MIC:
		/* enable mic jack and bias, mute hp */
		FUNC1(dapm, "Headphone Jack");
		FUNC1(dapm, "Headset Jack");
		FUNC1(dapm, "Line Jack");
		FUNC2(dapm, "Mic Jack");
		FUNC0(SPITZ_GPIO_MUTE_L, 0);
		FUNC0(SPITZ_GPIO_MUTE_R, 0);
		break;
	case SPITZ_LINE:
		/* enable line jack, disable mic bias and mute hp */
		FUNC1(dapm, "Headphone Jack");
		FUNC1(dapm, "Headset Jack");
		FUNC1(dapm, "Mic Jack");
		FUNC2(dapm, "Line Jack");
		FUNC0(SPITZ_GPIO_MUTE_L, 0);
		FUNC0(SPITZ_GPIO_MUTE_R, 0);
		break;
	case SPITZ_HEADSET:
		/* enable and unmute headset jack enable mic bias, mute L hp */
		FUNC1(dapm, "Headphone Jack");
		FUNC2(dapm, "Mic Jack");
		FUNC1(dapm, "Line Jack");
		FUNC2(dapm, "Headset Jack");
		FUNC0(SPITZ_GPIO_MUTE_L, 0);
		FUNC0(SPITZ_GPIO_MUTE_R, 1);
		break;
	case SPITZ_HP_OFF:

		/* jack removed, everything off */
		FUNC1(dapm, "Headphone Jack");
		FUNC1(dapm, "Headset Jack");
		FUNC1(dapm, "Mic Jack");
		FUNC1(dapm, "Line Jack");
		FUNC0(SPITZ_GPIO_MUTE_L, 0);
		FUNC0(SPITZ_GPIO_MUTE_R, 0);
		break;
	}

	FUNC5(dapm);

	FUNC4(dapm);
}