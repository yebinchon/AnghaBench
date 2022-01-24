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
struct tscs454 {int dummy; } ;
struct snd_soc_dapm_widget {int /*<<< orphan*/  name; int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 unsigned int FM_PLLCTL_PLL1CLKEN ; 
 unsigned int FM_PLLCTL_PLL2CLKEN ; 
 unsigned int FV_PLL1CLKEN_DISABLE ; 
 unsigned int FV_PLL1CLKEN_ENABLE ; 
 unsigned int FV_PLL2CLKEN_DISABLE ; 
 unsigned int FV_PLL2CLKEN_ENABLE ; 
 int /*<<< orphan*/  R_PLLCTL ; 
 int SND_SOC_DAPM_POST_PMU ; 
 int FUNC0 (struct snd_soc_component*,struct tscs454*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct tscs454* FUNC3 (struct snd_soc_component*) ; 
 int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct snd_soc_component* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_dapm_widget *w,
		struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component =
		FUNC5(w->dapm);
	struct tscs454 *tscs454 = FUNC3(component);
	bool enable;
	bool pll1;
	unsigned int msk;
	unsigned int val;
	int ret;

	if (FUNC6(w->name, "PLL 1"))
		pll1 = true;
	else
		pll1 = false;

	msk = pll1 ? FM_PLLCTL_PLL1CLKEN : FM_PLLCTL_PLL2CLKEN;

	if (event == SND_SOC_DAPM_POST_PMU)
		enable = true;
	else
		enable = false;

	if (enable)
		val = pll1 ? FV_PLL1CLKEN_ENABLE : FV_PLL2CLKEN_ENABLE;
	else
		val = pll1 ? FV_PLL1CLKEN_DISABLE : FV_PLL2CLKEN_DISABLE;

	ret = FUNC4(component, R_PLLCTL, msk, val);
	if (ret < 0) {
		FUNC1(component->dev, "Failed to %s PLL %d  (%d)\n",
				enable ? "enable" : "disable",
				pll1 ? 1 : 2,
				ret);
		return ret;
	}

	if (enable) {
		FUNC2(20); // Wait for lock
		ret = FUNC0(component, tscs454);
		if (ret < 0) {
			FUNC1(component->dev,
					"Failed to sync coeff ram (%d)\n", ret);
			return ret;
		}
	}

	return 0;
}