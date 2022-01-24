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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct adau1781_platform_data {scalar_t__ use_dmic; int /*<<< orphan*/  right_input_differential; int /*<<< orphan*/  left_input_differential; } ;
struct adau {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADAU1781_LEFT_PGA ; 
 int /*<<< orphan*/  ADAU1781_RIGHT_PGA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adau1781_adc_dapm_routes ; 
 int /*<<< orphan*/  adau1781_dmic_dapm_routes ; 
 int /*<<< orphan*/  adau1781_dmic_dapm_widgets ; 
 int FUNC1 (struct adau*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_soc_component*) ; 
 int FUNC3 (struct snd_soc_component*) ; 
 struct adau1781_platform_data* FUNC4 (int /*<<< orphan*/ ) ; 
 struct snd_soc_dapm_context* FUNC5 (struct snd_soc_component*) ; 
 struct adau* FUNC6 (struct snd_soc_component*) ; 
 int FUNC7 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct snd_soc_component *component)
{
	struct snd_soc_dapm_context *dapm = FUNC5(component);
	struct adau1781_platform_data *pdata = FUNC4(component->dev);
	struct adau *adau = FUNC6(component);
	int ret;

	ret = FUNC3(component);
	if (ret)
		return ret;

	if (pdata) {
		ret = FUNC1(adau, ADAU1781_LEFT_PGA,
			pdata->left_input_differential);
		if (ret)
			return ret;
		ret = FUNC1(adau, ADAU1781_RIGHT_PGA,
			pdata->right_input_differential);
		if (ret)
			return ret;
	}

	if (pdata && pdata->use_dmic) {
		ret = FUNC8(dapm,
			adau1781_dmic_dapm_widgets,
			FUNC0(adau1781_dmic_dapm_widgets));
		if (ret)
			return ret;
		ret = FUNC7(dapm, adau1781_dmic_dapm_routes,
			FUNC0(adau1781_dmic_dapm_routes));
		if (ret)
			return ret;
	} else {
		ret = FUNC7(dapm, adau1781_adc_dapm_routes,
			FUNC0(adau1781_adc_dapm_routes));
		if (ret)
			return ret;
	}

	ret = FUNC2(component);
	if (ret < 0)
		return ret;

	return 0;
}