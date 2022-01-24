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
struct adau {int /*<<< orphan*/  sigmadsp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adau17x1_controls ; 
 int /*<<< orphan*/  adau17x1_dapm_widgets ; 
 int /*<<< orphan*/  adau17x1_dsp_dapm_widgets ; 
 scalar_t__ FUNC1 (struct adau*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct snd_soc_component*) ; 
 int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_soc_dapm_context* FUNC5 (struct snd_soc_component*) ; 
 struct adau* FUNC6 (struct snd_soc_component*) ; 
 int FUNC7 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct snd_soc_component *component)
{
	struct snd_soc_dapm_context *dapm = FUNC5(component);
	struct adau *adau = FUNC6(component);
	int ret;

	ret = FUNC4(component, adau17x1_controls,
		FUNC0(adau17x1_controls));
	if (ret)
		return ret;
	ret = FUNC7(dapm, adau17x1_dapm_widgets,
		FUNC0(adau17x1_dapm_widgets));
	if (ret)
		return ret;

	if (FUNC1(adau)) {
		ret = FUNC7(dapm, adau17x1_dsp_dapm_widgets,
			FUNC0(adau17x1_dsp_dapm_widgets));
		if (ret)
			return ret;

		if (!adau->sigmadsp)
			return 0;

		ret = FUNC3(adau->sigmadsp, component);
		if (ret) {
			FUNC2(component->dev, "Failed to attach firmware: %d\n",
				ret);
			return ret;
		}
	}

	return 0;
}