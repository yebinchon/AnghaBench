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
struct snd_soc_component {int dummy; } ;
struct cs42xx8_priv {int /*<<< orphan*/  regmap; TYPE_1__* drvdata; } ;
struct TYPE_2__ {int num_adcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CS42XX8_DACMUTE ; 
 int /*<<< orphan*/  CS42XX8_DACMUTE_ALL ; 
 int /*<<< orphan*/  cs42xx8_adc3_dapm_routes ; 
 int /*<<< orphan*/  cs42xx8_adc3_dapm_widgets ; 
 int /*<<< orphan*/  cs42xx8_adc3_snd_controls ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_soc_dapm_context* FUNC3 (struct snd_soc_component*) ; 
 struct cs42xx8_priv* FUNC4 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_component *component)
{
	struct cs42xx8_priv *cs42xx8 = FUNC4(component);
	struct snd_soc_dapm_context *dapm = FUNC3(component);

	switch (cs42xx8->drvdata->num_adcs) {
	case 3:
		FUNC2(component, cs42xx8_adc3_snd_controls,
					FUNC0(cs42xx8_adc3_snd_controls));
		FUNC6(dapm, cs42xx8_adc3_dapm_widgets,
					FUNC0(cs42xx8_adc3_dapm_widgets));
		FUNC5(dapm, cs42xx8_adc3_dapm_routes,
					FUNC0(cs42xx8_adc3_dapm_routes));
		break;
	default:
		break;
	}

	/* Mute all DAC channels */
	FUNC1(cs42xx8->regmap, CS42XX8_DACMUTE, CS42XX8_DACMUTE_ALL);

	return 0;
}