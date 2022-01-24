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
struct snd_soc_dai {size_t id; int /*<<< orphan*/  component; } ;
struct adau1373_dai {unsigned int sysclk; int clk_src; } ;
struct adau1373 {int /*<<< orphan*/  regmap; struct adau1373_dai* dais; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  ADAU1373_BCLKDIV_SOURCE ; 
#define  ADAU1373_CLK_SRC_PLL1 129 
#define  ADAU1373_CLK_SRC_PLL2 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct adau1373* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dai *dai,
	int clk_id, unsigned int freq, int dir)
{
	struct adau1373 *adau1373 = FUNC2(dai->component);
	struct adau1373_dai *adau1373_dai = &adau1373->dais[dai->id];

	switch (clk_id) {
	case ADAU1373_CLK_SRC_PLL1:
	case ADAU1373_CLK_SRC_PLL2:
		break;
	default:
		return -EINVAL;
	}

	adau1373_dai->sysclk = freq;
	adau1373_dai->clk_src = clk_id;

	FUNC1(adau1373->regmap, FUNC0(dai->id),
		ADAU1373_BCLKDIV_SOURCE, clk_id << 5);

	return 0;
}