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
struct snd_soc_component {int dummy; } ;
struct adau {scalar_t__ clk_src; } ;

/* Variables and functions */
 scalar_t__ ADAU17X1_CLK_SRC_MCLK ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  adau17x1_dapm_pll_route ; 
 int /*<<< orphan*/ * adau17x1_dapm_routes ; 
 int /*<<< orphan*/ * adau17x1_dsp_dapm_routes ; 
 scalar_t__ FUNC1 (struct adau*) ; 
 int /*<<< orphan*/ * adau17x1_no_dsp_dapm_routes ; 
 struct snd_soc_dapm_context* FUNC2 (struct snd_soc_component*) ; 
 struct adau* FUNC3 (struct snd_soc_component*) ; 
 int FUNC4 (struct snd_soc_dapm_context*,int /*<<< orphan*/ *,int) ; 

int FUNC5(struct snd_soc_component *component)
{
	struct snd_soc_dapm_context *dapm = FUNC2(component);
	struct adau *adau = FUNC3(component);
	int ret;

	ret = FUNC4(dapm, adau17x1_dapm_routes,
		FUNC0(adau17x1_dapm_routes));
	if (ret)
		return ret;

	if (FUNC1(adau)) {
		ret = FUNC4(dapm, adau17x1_dsp_dapm_routes,
			FUNC0(adau17x1_dsp_dapm_routes));
	} else {
		ret = FUNC4(dapm, adau17x1_no_dsp_dapm_routes,
			FUNC0(adau17x1_no_dsp_dapm_routes));
	}

	if (adau->clk_src != ADAU17X1_CLK_SRC_MCLK)
		FUNC4(dapm, &adau17x1_dapm_pll_route, 1);

	return ret;
}