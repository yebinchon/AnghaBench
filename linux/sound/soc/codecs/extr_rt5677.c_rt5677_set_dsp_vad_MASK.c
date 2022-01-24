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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct rt5677_priv {int type; int /*<<< orphan*/  regmap; int /*<<< orphan*/  fw2; int /*<<< orphan*/  fw1; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SND_SOC_RT5677_SPI ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  RT5676 129 
#define  RT5677 128 
 scalar_t__ RT5677_BIAS_CUR4 ; 
 scalar_t__ RT5677_DIG_MISC ; 
 int RT5677_DSP_CLK_SRC_BYPASS ; 
 int RT5677_DSP_CLK_SRC_MASK ; 
 int /*<<< orphan*/  RT5677_FIRMWARE1 ; 
 int /*<<< orphan*/  RT5677_FIRMWARE2 ; 
 scalar_t__ RT5677_GLB_CLK1 ; 
 scalar_t__ RT5677_GLB_CLK2 ; 
 int RT5677_LDO1_SEL_MASK ; 
 int RT5677_MCLK2_SRC ; 
 int RT5677_MCLK_SRC_MASK ; 
 int RT5677_PLL2_PR_SRC_MASK ; 
 int RT5677_PLL2_PR_SRC_MCLK2 ; 
 scalar_t__ RT5677_PR_BASE ; 
 scalar_t__ RT5677_PWR_ANLG1 ; 
 scalar_t__ RT5677_PWR_ANLG2 ; 
 scalar_t__ RT5677_PWR_DSP1 ; 
 scalar_t__ RT5677_PWR_DSP2 ; 
 int RT5677_PWR_LDO1 ; 
 scalar_t__ RT5677_RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_component*,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 struct rt5677_priv* FUNC11 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC12(struct snd_soc_component *component, bool on)
{
	struct rt5677_priv *rt5677 = FUNC11(component);
	static bool activity;
	int ret;

	if (!FUNC0(CONFIG_SND_SOC_RT5677_SPI))
		return -ENXIO;

	if (on && !activity) {
		activity = true;

		FUNC2(rt5677->regmap, false);
		FUNC1(rt5677->regmap, true);

		FUNC5(rt5677->regmap, RT5677_DIG_MISC, 0x1, 0x1);
		FUNC5(rt5677->regmap,
			RT5677_PR_BASE + RT5677_BIAS_CUR4, 0x0f00, 0x0f00);
		FUNC5(rt5677->regmap, RT5677_PWR_ANLG1,
			RT5677_LDO1_SEL_MASK, 0x0);
		FUNC5(rt5677->regmap, RT5677_PWR_ANLG2,
			RT5677_PWR_LDO1, RT5677_PWR_LDO1);
		switch (rt5677->type) {
		case RT5677:
			FUNC5(rt5677->regmap, RT5677_GLB_CLK1,
				RT5677_MCLK_SRC_MASK, RT5677_MCLK2_SRC);
			FUNC5(rt5677->regmap, RT5677_GLB_CLK2,
				RT5677_PLL2_PR_SRC_MASK |
				RT5677_DSP_CLK_SRC_MASK,
				RT5677_PLL2_PR_SRC_MCLK2 |
				RT5677_DSP_CLK_SRC_BYPASS);
			break;
		case RT5676:
			FUNC5(rt5677->regmap, RT5677_GLB_CLK2,
				RT5677_DSP_CLK_SRC_MASK,
				RT5677_DSP_CLK_SRC_BYPASS);
			break;
		default:
			break;
		}
		FUNC6(rt5677->regmap, RT5677_PWR_DSP2, 0x07ff);
		FUNC6(rt5677->regmap, RT5677_PWR_DSP1, 0x07fd);
		FUNC9(component, true);

		ret = FUNC8(&rt5677->fw1, RT5677_FIRMWARE1,
			component->dev);
		if (ret == 0) {
			FUNC10(0x50000000, rt5677->fw1);
			FUNC7(rt5677->fw1);
		}

		ret = FUNC8(&rt5677->fw2, RT5677_FIRMWARE2,
			component->dev);
		if (ret == 0) {
			FUNC10(0x60000000, rt5677->fw2);
			FUNC7(rt5677->fw2);
		}

		FUNC5(rt5677->regmap, RT5677_PWR_DSP1, 0x1, 0x0);

		FUNC1(rt5677->regmap, false);
		FUNC2(rt5677->regmap, true);
	} else if (!on && activity) {
		activity = false;

		FUNC2(rt5677->regmap, false);
		FUNC1(rt5677->regmap, true);

		FUNC5(rt5677->regmap, RT5677_PWR_DSP1, 0x1, 0x1);
		FUNC9(component, false);
		FUNC6(rt5677->regmap, RT5677_PWR_DSP1, 0x0001);

		FUNC6(rt5677->regmap, RT5677_RESET, 0x10ec);

		FUNC1(rt5677->regmap, false);
		FUNC3(rt5677->regmap);
		FUNC4(rt5677->regmap);
	}

	return 0;
}