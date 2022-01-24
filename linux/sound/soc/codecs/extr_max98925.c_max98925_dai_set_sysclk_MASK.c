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
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct max98925_priv {unsigned int sysclk; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  M98925_DAI_CLK_SOURCE_MASK ; 
 int /*<<< orphan*/  MAX98925_DAI_CLK_MODE1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct max98925_priv* FUNC1 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai,
				   int clk_id, unsigned int freq, int dir)
{
	struct snd_soc_component *component = dai->component;
	struct max98925_priv *max98925 = FUNC1(component);

	switch (clk_id) {
	case 0:
		/* use MCLK for Left channel, right channel always BCLK */
		FUNC0(max98925->regmap,
				MAX98925_DAI_CLK_MODE1,
				M98925_DAI_CLK_SOURCE_MASK, 0);
		break;
	case 1:
		/* configure dai clock source to BCLK instead of MCLK */
		FUNC0(max98925->regmap,
				MAX98925_DAI_CLK_MODE1,
				M98925_DAI_CLK_SOURCE_MASK,
				M98925_DAI_CLK_SOURCE_MASK);
		break;
	default:
		return -EINVAL;
	}
	max98925->sysclk = freq;
	return 0;
}