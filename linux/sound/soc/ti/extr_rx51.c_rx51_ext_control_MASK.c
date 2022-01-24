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
struct snd_soc_dapm_context {struct snd_soc_card* card; } ;
struct snd_soc_card {int dummy; } ;
struct rx51_audio_pdata {int /*<<< orphan*/  tvout_selection_gpio; } ;

/* Variables and functions */
#define  RX51_JACK_HP 130 
#define  RX51_JACK_HS 129 
#define  RX51_JACK_TVOUT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ rx51_dmic_func ; 
 int rx51_jack_func ; 
 scalar_t__ rx51_spk_func ; 
 struct rx51_audio_pdata* FUNC1 (struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_dapm_context*) ; 

__attribute__((used)) static void FUNC7(struct snd_soc_dapm_context *dapm)
{
	struct snd_soc_card *card = dapm->card;
	struct rx51_audio_pdata *pdata = FUNC1(card);
	int hp = 0, hs = 0, tvout = 0;

	switch (rx51_jack_func) {
	case RX51_JACK_TVOUT:
		tvout = 1;
		hp = 1;
		break;
	case RX51_JACK_HS:
		hs = 1;
		/* fall through */
	case RX51_JACK_HP:
		hp = 1;
		break;
	}

	FUNC4(dapm);

	if (rx51_spk_func)
		FUNC3(dapm, "Ext Spk");
	else
		FUNC2(dapm, "Ext Spk");
	if (rx51_dmic_func)
		FUNC3(dapm, "DMic");
	else
		FUNC2(dapm, "DMic");
	if (hp)
		FUNC3(dapm, "Headphone Jack");
	else
		FUNC2(dapm, "Headphone Jack");
	if (hs)
		FUNC3(dapm, "HS Mic");
	else
		FUNC2(dapm, "HS Mic");

	FUNC0(pdata->tvout_selection_gpio, tvout);

	FUNC6(dapm);

	FUNC5(dapm);
}