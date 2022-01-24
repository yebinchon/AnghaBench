#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct snd_soc_dai {int /*<<< orphan*/  component; } ;
struct cs53l30_private {int mclk_rate; int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {int mclkx; int ratio; int /*<<< orphan*/  mclkdiv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS53L30_MCLKCTL ; 
 int /*<<< orphan*/  CS53L30_MCLK_DIV_MASK ; 
 int FUNC0 (unsigned int) ; 
 TYPE_1__* cs53l30_mclkx_coeffs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cs53l30_private* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *dai,
			      int clk_id, unsigned int freq, int dir)
{
	struct cs53l30_private *priv = FUNC2(dai->component);
	int mclkx_coeff;
	u32 mclk_rate;

	/* MCLKX -> MCLK */
	mclkx_coeff = FUNC0(freq);
	if (mclkx_coeff < 0)
		return mclkx_coeff;

	mclk_rate = cs53l30_mclkx_coeffs[mclkx_coeff].mclkx /
		    cs53l30_mclkx_coeffs[mclkx_coeff].ratio;

	FUNC1(priv->regmap, CS53L30_MCLKCTL,
			   CS53L30_MCLK_DIV_MASK,
			   cs53l30_mclkx_coeffs[mclkx_coeff].mclkdiv);

	priv->mclk_rate = mclk_rate;

	return 0;
}