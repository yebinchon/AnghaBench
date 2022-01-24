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
struct adav80x {int pll_src; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADAV80X_PLL_CLK_SRC ; 
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 unsigned int FUNC2 (int) ; 
 int /*<<< orphan*/  ADAV80X_PLL_CTRL1 ; 
 unsigned int ADAV80X_PLL_CTRL1_PLLDIV ; 
 int /*<<< orphan*/  ADAV80X_PLL_CTRL2 ; 
 unsigned int FUNC3 (int) ; 
 unsigned int FUNC4 (int) ; 
 unsigned int FUNC5 (int) ; 
 unsigned int FUNC6 (int) ; 
 unsigned int FUNC7 (int) ; 
#define  ADAV80X_PLL_SRC_MCLKI 130 
#define  ADAV80X_PLL_SRC_XIN 129 
#define  ADAV80X_PLL_SRC_XTAL 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct snd_soc_dapm_context* FUNC9 (struct snd_soc_component*) ; 
 struct adav80x* FUNC10 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_soc_dapm_context*) ; 

__attribute__((used)) static int FUNC12(struct snd_soc_component *component, int pll_id,
		int source, unsigned int freq_in, unsigned int freq_out)
{
	struct snd_soc_dapm_context *dapm = FUNC9(component);
	struct adav80x *adav80x = FUNC10(component);
	unsigned int pll_ctrl1 = 0;
	unsigned int pll_ctrl2 = 0;
	unsigned int pll_src;

	switch (source) {
	case ADAV80X_PLL_SRC_XTAL:
	case ADAV80X_PLL_SRC_XIN:
	case ADAV80X_PLL_SRC_MCLKI:
		break;
	default:
		return -EINVAL;
	}

	if (!freq_out)
		return 0;

	switch (freq_in) {
	case 27000000:
		break;
	case 54000000:
		if (source == ADAV80X_PLL_SRC_XIN) {
			pll_ctrl1 |= ADAV80X_PLL_CTRL1_PLLDIV;
			break;
		}
		/* fall through */
	default:
		return -EINVAL;
	}

	if (freq_out > 12288000) {
		pll_ctrl2 |= FUNC3(pll_id);
		freq_out /= 2;
	}

	/* freq_out = sample_rate * 256 */
	switch (freq_out) {
	case 8192000:
		pll_ctrl2 |= FUNC4(pll_id);
		break;
	case 11289600:
		pll_ctrl2 |= FUNC5(pll_id);
		break;
	case 12288000:
		pll_ctrl2 |= FUNC6(pll_id);
		break;
	default:
		return -EINVAL;
	}

	FUNC8(adav80x->regmap, ADAV80X_PLL_CTRL1,
			ADAV80X_PLL_CTRL1_PLLDIV, pll_ctrl1);
	FUNC8(adav80x->regmap, ADAV80X_PLL_CTRL2,
			FUNC7(pll_id), pll_ctrl2);

	if (source != adav80x->pll_src) {
		if (source == ADAV80X_PLL_SRC_MCLKI)
			pll_src = FUNC1(pll_id);
		else
			pll_src = FUNC2(pll_id);

		FUNC8(adav80x->regmap, ADAV80X_PLL_CLK_SRC,
				FUNC0(pll_id), pll_src);

		adav80x->pll_src = source;

		FUNC11(dapm);
	}

	return 0;
}