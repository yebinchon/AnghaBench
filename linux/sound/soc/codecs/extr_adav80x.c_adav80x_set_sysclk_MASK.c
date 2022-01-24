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
struct adav80x {unsigned int sysclk; int clk_src; int* sysclk_pd; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
#define  ADAV80X_CLK_MCLKI 135 
#define  ADAV80X_CLK_PLL1 134 
#define  ADAV80X_CLK_PLL2 133 
#define  ADAV80X_CLK_SYSCLK1 132 
#define  ADAV80X_CLK_SYSCLK2 131 
#define  ADAV80X_CLK_SYSCLK3 130 
#define  ADAV80X_CLK_XIN 129 
#define  ADAV80X_CLK_XTAL 128 
 int /*<<< orphan*/  ADAV80X_ICLK_CTRL1 ; 
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 unsigned int FUNC2 (int) ; 
 int /*<<< orphan*/  ADAV80X_ICLK_CTRL2 ; 
 unsigned int FUNC3 (int) ; 
 int /*<<< orphan*/  ADAV80X_PLL_OUTE ; 
 unsigned int FUNC4 (int) ; 
 int EINVAL ; 
 int SND_SOC_CLOCK_IN ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct snd_soc_dapm_context* FUNC7 (struct snd_soc_component*) ; 
 struct adav80x* FUNC8 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC13 (struct snd_soc_dapm_context*) ; 
 int /*<<< orphan*/  FUNC14 (struct snd_soc_dapm_context*) ; 

__attribute__((used)) static int FUNC15(struct snd_soc_component *component,
			      int clk_id, int source,
			      unsigned int freq, int dir)
{
	struct adav80x *adav80x = FUNC8(component);
	struct snd_soc_dapm_context *dapm = FUNC7(component);

	if (dir == SND_SOC_CLOCK_IN) {
		switch (clk_id) {
		case ADAV80X_CLK_XIN:
		case ADAV80X_CLK_XTAL:
		case ADAV80X_CLK_MCLKI:
		case ADAV80X_CLK_PLL1:
		case ADAV80X_CLK_PLL2:
			break;
		default:
			return -EINVAL;
		}

		adav80x->sysclk = freq;

		if (adav80x->clk_src != clk_id) {
			unsigned int iclk_ctrl1, iclk_ctrl2;

			adav80x->clk_src = clk_id;
			if (clk_id == ADAV80X_CLK_XTAL)
				clk_id = ADAV80X_CLK_XIN;

			iclk_ctrl1 = FUNC1(clk_id) |
					FUNC0(clk_id) |
					FUNC2(clk_id);
			iclk_ctrl2 = FUNC3(clk_id);

			FUNC6(adav80x->regmap, ADAV80X_ICLK_CTRL1,
				iclk_ctrl1);
			FUNC6(adav80x->regmap, ADAV80X_ICLK_CTRL2,
				iclk_ctrl2);

			FUNC13(dapm);
		}
	} else {
		unsigned int mask;

		switch (clk_id) {
		case ADAV80X_CLK_SYSCLK1:
		case ADAV80X_CLK_SYSCLK2:
		case ADAV80X_CLK_SYSCLK3:
			break;
		default:
			return -EINVAL;
		}

		clk_id -= ADAV80X_CLK_SYSCLK1;
		mask = FUNC4(clk_id);

		if (freq == 0) {
			FUNC5(adav80x->regmap, ADAV80X_PLL_OUTE,
				mask, mask);
			adav80x->sysclk_pd[clk_id] = true;
		} else {
			FUNC5(adav80x->regmap, ADAV80X_PLL_OUTE,
				mask, 0);
			adav80x->sysclk_pd[clk_id] = false;
		}

		FUNC11(dapm);

		if (adav80x->sysclk_pd[0])
			FUNC9(dapm, "PLL1");
		else
			FUNC10(dapm, "PLL1");

		if (adav80x->sysclk_pd[1] || adav80x->sysclk_pd[2])
			FUNC9(dapm, "PLL2");
		else
			FUNC10(dapm, "PLL2");

		FUNC14(dapm);

		FUNC12(dapm);
	}

	return 0;
}