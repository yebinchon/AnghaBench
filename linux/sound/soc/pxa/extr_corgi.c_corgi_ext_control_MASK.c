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
 int /*<<< orphan*/  CORGI_GPIO_MUTE_L ; 
 int /*<<< orphan*/  CORGI_GPIO_MUTE_R ; 
#define  CORGI_HEADSET 131 
#define  CORGI_HP 130 
#define  CORGI_LINE 129 
#define  CORGI_MIC 128 
 scalar_t__ CORGI_SPK_ON ; 
 int corgi_jack_func ; 
 scalar_t__ corgi_spk_func ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dapm_context*) ; 

__attribute__((used)) static void FUNC6(struct snd_soc_dapm_context *dapm)
{
	FUNC3(dapm);

	/* set up jack connection */
	switch (corgi_jack_func) {
	case CORGI_HP:
		/* set = unmute headphone */
		FUNC0(CORGI_GPIO_MUTE_L, 1);
		FUNC0(CORGI_GPIO_MUTE_R, 1);
		FUNC1(dapm, "Mic Jack");
		FUNC1(dapm, "Line Jack");
		FUNC2(dapm, "Headphone Jack");
		FUNC1(dapm, "Headset Jack");
		break;
	case CORGI_MIC:
		/* reset = mute headphone */
		FUNC0(CORGI_GPIO_MUTE_L, 0);
		FUNC0(CORGI_GPIO_MUTE_R, 0);
		FUNC2(dapm, "Mic Jack");
		FUNC1(dapm, "Line Jack");
		FUNC1(dapm, "Headphone Jack");
		FUNC1(dapm, "Headset Jack");
		break;
	case CORGI_LINE:
		FUNC0(CORGI_GPIO_MUTE_L, 0);
		FUNC0(CORGI_GPIO_MUTE_R, 0);
		FUNC1(dapm, "Mic Jack");
		FUNC2(dapm, "Line Jack");
		FUNC1(dapm, "Headphone Jack");
		FUNC1(dapm, "Headset Jack");
		break;
	case CORGI_HEADSET:
		FUNC0(CORGI_GPIO_MUTE_L, 0);
		FUNC0(CORGI_GPIO_MUTE_R, 1);
		FUNC2(dapm, "Mic Jack");
		FUNC1(dapm, "Line Jack");
		FUNC1(dapm, "Headphone Jack");
		FUNC2(dapm, "Headset Jack");
		break;
	}

	if (corgi_spk_func == CORGI_SPK_ON)
		FUNC2(dapm, "Ext Spk");
	else
		FUNC1(dapm, "Ext Spk");

	/* signal a DAPM event */
	FUNC5(dapm);

	FUNC4(dapm);
}