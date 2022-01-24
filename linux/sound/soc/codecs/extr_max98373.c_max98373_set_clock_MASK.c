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
struct max98373_priv {int ch_size; int /*<<< orphan*/  regmap; int /*<<< orphan*/  tdm_mode; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MAX98373_PCM_CLK_SETUP_BSEL_MASK ; 
 int /*<<< orphan*/  MAX98373_R2026_PCM_CLOCK_RATIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct max98373_priv* FUNC5 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_component *component,
	struct snd_pcm_hw_params *params)
{
	struct max98373_priv *max98373 = FUNC5(component);
	/* BCLK/LRCLK ratio calculation */
	int blr_clk_ratio = FUNC2(params) * max98373->ch_size;
	int value;

	if (!max98373->tdm_mode) {
		/* BCLK configuration */
		value = FUNC1(blr_clk_ratio);
		if (!value) {
			FUNC0(component->dev, "format unsupported %d\n",
				FUNC3(params));
			return -EINVAL;
		}

		FUNC4(max98373->regmap,
			MAX98373_R2026_PCM_CLOCK_RATIO,
			MAX98373_PCM_CLK_SETUP_BSEL_MASK,
			value);
	}
	return 0;
}