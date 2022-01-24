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
struct snd_soc_component {TYPE_1__* dev; } ;
struct adau1761_platform_data {scalar_t__ input_differential; } ;
struct adau {scalar_t__ type; int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {struct adau1761_platform_data* platform_data; } ;

/* Variables and functions */
 scalar_t__ ADAU1761 ; 
 int /*<<< orphan*/  ADAU1761_DIFF_INPUT_VOL_LDEN ; 
 int /*<<< orphan*/  ADAU1761_LEFT_DIFF_INPUT_VOL ; 
#define  ADAU1761_OUTPUT_MODE_HEADPHONE 129 
#define  ADAU1761_OUTPUT_MODE_LINE 128 
 int /*<<< orphan*/  ADAU1761_PLAY_LINE_LEFT_VOL ; 
 int /*<<< orphan*/  ADAU1761_PLAY_LINE_LEFT_VOL_MODE_HP ; 
 int /*<<< orphan*/  ADAU1761_PLAY_LINE_RIGHT_VOL ; 
 int /*<<< orphan*/  ADAU1761_PLAY_LINE_RIGHT_VOL_MODE_HP ; 
 int /*<<< orphan*/  ADAU1761_RIGHT_DIFF_INPUT_VOL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  adau1761_dapm_routes ; 
 int /*<<< orphan*/  adau1761_dapm_widgets ; 
 int /*<<< orphan*/  adau1761_differential_mode_controls ; 
 int FUNC1 (struct snd_soc_component*) ; 
 int FUNC2 (struct snd_soc_component*) ; 
 int FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  adau1761_single_mode_controls ; 
 int FUNC4 (struct snd_soc_component*) ; 
 int FUNC5 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_soc_dapm_context* FUNC8 (struct snd_soc_component*) ; 
 struct adau* FUNC9 (struct snd_soc_component*) ; 
 int FUNC10 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct snd_soc_component *component)
{
	struct snd_soc_dapm_context *dapm = FUNC8(component);
	struct adau1761_platform_data *pdata = component->dev->platform_data;
	struct adau *adau = FUNC9(component);
	int ret;

	ret = FUNC5(component);
	if (ret < 0)
		return ret;

	if (pdata && pdata->input_differential) {
		FUNC6(adau->regmap, ADAU1761_LEFT_DIFF_INPUT_VOL,
			ADAU1761_DIFF_INPUT_VOL_LDEN,
			ADAU1761_DIFF_INPUT_VOL_LDEN);
		FUNC6(adau->regmap, ADAU1761_RIGHT_DIFF_INPUT_VOL,
			ADAU1761_DIFF_INPUT_VOL_LDEN,
			ADAU1761_DIFF_INPUT_VOL_LDEN);
		ret = FUNC7(component,
			adau1761_differential_mode_controls,
			FUNC0(adau1761_differential_mode_controls));
		if (ret)
			return ret;
	} else {
		ret = FUNC7(component,
			adau1761_single_mode_controls,
			FUNC0(adau1761_single_mode_controls));
		if (ret)
			return ret;
	}

	switch (FUNC1(component)) {
	case ADAU1761_OUTPUT_MODE_LINE:
		break;
	case ADAU1761_OUTPUT_MODE_HEADPHONE:
		FUNC6(adau->regmap, ADAU1761_PLAY_LINE_LEFT_VOL,
			ADAU1761_PLAY_LINE_LEFT_VOL_MODE_HP,
			ADAU1761_PLAY_LINE_LEFT_VOL_MODE_HP);
		FUNC6(adau->regmap, ADAU1761_PLAY_LINE_RIGHT_VOL,
			ADAU1761_PLAY_LINE_RIGHT_VOL_MODE_HP,
			ADAU1761_PLAY_LINE_RIGHT_VOL_MODE_HP);
		break;
	default:
		return -EINVAL;
	}

	ret = FUNC3(component);
	if (ret)
		return ret;

	ret = FUNC2(component);
	if (ret)
		return ret;

	if (adau->type == ADAU1761) {
		ret = FUNC11(dapm, adau1761_dapm_widgets,
			FUNC0(adau1761_dapm_widgets));
		if (ret)
			return ret;

		ret = FUNC10(dapm, adau1761_dapm_routes,
			FUNC0(adau1761_dapm_routes));
		if (ret)
			return ret;
	}

	ret = FUNC4(component);
	if (ret < 0)
		return ret;

	return 0;
}