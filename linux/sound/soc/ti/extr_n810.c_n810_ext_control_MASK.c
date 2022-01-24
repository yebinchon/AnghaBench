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
#define  N810_JACK_HP 130 
#define  N810_JACK_HS 129 
#define  N810_JACK_MIC 128 
 scalar_t__ n810_dmic_func ; 
 int n810_jack_func ; 
 scalar_t__ n810_spk_func ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dapm_context*) ; 

__attribute__((used)) static void FUNC5(struct snd_soc_dapm_context *dapm)
{
	int hp = 0, line1l = 0;

	switch (n810_jack_func) {
	case N810_JACK_HS:
		line1l = 1;
		/* fall through */
	case N810_JACK_HP:
		hp = 1;
		break;
	case N810_JACK_MIC:
		line1l = 1;
		break;
	}

	FUNC2(dapm);

	if (n810_spk_func)
		FUNC1(dapm, "Ext Spk");
	else
		FUNC0(dapm, "Ext Spk");

	if (hp)
		FUNC1(dapm, "Headphone Jack");
	else
		FUNC0(dapm, "Headphone Jack");
	if (line1l)
		FUNC1(dapm, "HS Mic");
	else
		FUNC0(dapm, "HS Mic");

	if (n810_dmic_func)
		FUNC1(dapm, "DMic");
	else
		FUNC0(dapm, "DMic");

	FUNC4(dapm);

	FUNC3(dapm);
}