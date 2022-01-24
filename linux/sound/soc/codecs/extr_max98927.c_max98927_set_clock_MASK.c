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
struct snd_pcm_hw_params {int dummy; } ;
struct max98927_priv {int ch_size; scalar_t__ sysclk; int /*<<< orphan*/  regmap; int /*<<< orphan*/  tdm_mode; scalar_t__ master; struct snd_soc_component* component; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  MAX98927_PCM_CLK_SETUP_BSEL_MASK ; 
 int /*<<< orphan*/  MAX98927_PCM_MASTER_MODE_MCLK_MASK ; 
 int MAX98927_PCM_MASTER_MODE_MCLK_RATE_SHIFT ; 
 int /*<<< orphan*/  MAX98927_R0021_PCM_MASTER_MODE ; 
 int /*<<< orphan*/  MAX98927_R0022_PCM_CLK_SETUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_hw_params*) ; 
 scalar_t__* rate_table ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct max98927_priv *max98927,
	struct snd_pcm_hw_params *params)
{
	struct snd_soc_component *component = max98927->component;
	/* BCLK/LRCLK ratio calculation */
	int blr_clk_ratio = FUNC3(params) * max98927->ch_size;
	int value;

	if (max98927->master) {
		int i;
		/* match rate to closest value */
		for (i = 0; i < FUNC0(rate_table); i++) {
			if (rate_table[i] >= max98927->sysclk)
				break;
		}
		if (i == FUNC0(rate_table)) {
			FUNC1(component->dev, "failed to find proper clock rate.\n");
			return -EINVAL;
		}
		FUNC5(max98927->regmap,
			MAX98927_R0021_PCM_MASTER_MODE,
			MAX98927_PCM_MASTER_MODE_MCLK_MASK,
			i << MAX98927_PCM_MASTER_MODE_MCLK_RATE_SHIFT);
	}

	if (!max98927->tdm_mode) {
		/* BCLK configuration */
		value = FUNC2(blr_clk_ratio);
		if (!value) {
			FUNC1(component->dev, "format unsupported %d\n",
				FUNC4(params));
			return -EINVAL;
		}

		FUNC5(max98927->regmap,
			MAX98927_R0022_PCM_CLK_SETUP,
			MAX98927_PCM_CLK_SETUP_BSEL_MASK,
			value);
	}
	return 0;
}