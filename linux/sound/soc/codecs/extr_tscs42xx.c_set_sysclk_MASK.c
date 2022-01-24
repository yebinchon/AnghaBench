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
struct tscs42xx {int sysclk_src_id; int /*<<< orphan*/  sysclk; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int RV_PLLREFSEL_PLL1_REF_SEL_MCLK2 ; 
 int RV_PLLREFSEL_PLL1_REF_SEL_XTAL_MCLK1 ; 
 int RV_PLLREFSEL_PLL2_REF_SEL_MCLK2 ; 
 int RV_PLLREFSEL_PLL2_REF_SEL_XTAL_MCLK1 ; 
 int /*<<< orphan*/  R_PLLREFSEL ; 
#define  TSCS42XX_PLL_SRC_MCLK1 130 
#define  TSCS42XX_PLL_SRC_MCLK2 129 
#define  TSCS42XX_PLL_SRC_XTAL 128 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct snd_soc_component*,unsigned long) ; 
 struct tscs42xx* FUNC3 (struct snd_soc_component*) ; 
 int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_component *component)
{
	struct tscs42xx *tscs42xx = FUNC3(component);
	unsigned long freq;
	int ret;

	switch (tscs42xx->sysclk_src_id) {
	case TSCS42XX_PLL_SRC_XTAL:
	case TSCS42XX_PLL_SRC_MCLK1:
		ret = FUNC4(component, R_PLLREFSEL,
				RV_PLLREFSEL_PLL1_REF_SEL_XTAL_MCLK1 |
				RV_PLLREFSEL_PLL2_REF_SEL_XTAL_MCLK1);
		if (ret < 0) {
			FUNC1(component->dev,
				"Failed to set pll reference input (%d)\n",
				ret);
			return ret;
		}
		break;
	case TSCS42XX_PLL_SRC_MCLK2:
		ret = FUNC4(component, R_PLLREFSEL,
				RV_PLLREFSEL_PLL1_REF_SEL_MCLK2 |
				RV_PLLREFSEL_PLL2_REF_SEL_MCLK2);
		if (ret < 0) {
			FUNC1(component->dev,
				"Failed to set PLL reference (%d)\n", ret);
			return ret;
		}
		break;
	default:
		FUNC1(component->dev, "pll src is unsupported\n");
		return -EINVAL;
	}

	freq = FUNC0(tscs42xx->sysclk);
	ret = FUNC2(component, freq);
	if (ret < 0) {
		FUNC1(component->dev,
			"Failed to setup PLL input freq (%d)\n", ret);
		return ret;
	}

	return 0;
}