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
typedef  int /*<<< orphan*/  u32 ;
struct mxs_saif {unsigned int cur_rate; scalar_t__ base; scalar_t__ mclk_in_use; int /*<<< orphan*/  clk; int /*<<< orphan*/  id; int /*<<< orphan*/  dev; scalar_t__ ongoing; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BM_SAIF_CTRL_BITCLK_BASE_RATE ; 
 int /*<<< orphan*/  BM_SAIF_CTRL_BITCLK_MULT_RATE ; 
 int EINVAL ; 
 scalar_t__ SAIF_CTRL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int) ; 
 struct mxs_saif* FUNC8 (struct mxs_saif*) ; 

__attribute__((used)) static int FUNC9(struct mxs_saif *saif,
				  unsigned int mclk,
				  unsigned int rate)
{
	u32 scr;
	int ret;
	struct mxs_saif *master_saif;

	FUNC6(saif->dev, "mclk %d rate %d\n", mclk, rate);

	/* Set master saif to generate proper clock */
	master_saif = FUNC8(saif);
	if (!master_saif)
		return -EINVAL;

	FUNC6(saif->dev, "master saif%d\n", master_saif->id);

	/* Checking if can playback and capture simutaneously */
	if (master_saif->ongoing && rate != master_saif->cur_rate) {
		FUNC7(saif->dev,
			"can not change clock, master saif%d(rate %d) is ongoing\n",
			master_saif->id, master_saif->cur_rate);
		return -EINVAL;
	}

	scr = FUNC1(master_saif->base + SAIF_CTRL);
	scr &= ~BM_SAIF_CTRL_BITCLK_MULT_RATE;
	scr &= ~BM_SAIF_CTRL_BITCLK_BASE_RATE;

	/*
	 * Set SAIF clock
	 *
	 * The SAIF clock should be either 384*fs or 512*fs.
	 * If MCLK is used, the SAIF clk ratio needs to match mclk ratio.
	 *  For 256x, 128x, 64x, and 32x sub-rates, set saif clk as 512*fs.
	 *  For 192x, 96x, and 48x sub-rates, set saif clk as 384*fs.
	 *
	 * If MCLK is not used, we just set saif clk to 512*fs.
	 */
	ret = FUNC4(master_saif->clk);
	if (ret)
		return ret;

	if (master_saif->mclk_in_use) {
		switch (mclk / rate) {
		case 32:
		case 64:
		case 128:
		case 256:
		case 512:
			scr &= ~BM_SAIF_CTRL_BITCLK_BASE_RATE;
			ret = FUNC5(master_saif->clk, 512 * rate);
			break;
		case 48:
		case 96:
		case 192:
		case 384:
			scr |= BM_SAIF_CTRL_BITCLK_BASE_RATE;
			ret = FUNC5(master_saif->clk, 384 * rate);
			break;
		default:
			/* SAIF MCLK should be a sub-rate of 512x or 384x */
			FUNC3(master_saif->clk);
			return -EINVAL;
		}
	} else {
		ret = FUNC5(master_saif->clk, 512 * rate);
		scr &= ~BM_SAIF_CTRL_BITCLK_BASE_RATE;
	}

	FUNC3(master_saif->clk);

	if (ret)
		return ret;

	master_saif->cur_rate = rate;

	if (!master_saif->mclk_in_use) {
		FUNC2(scr, master_saif->base + SAIF_CTRL);
		return 0;
	}

	/*
	 * Program the over-sample rate for MCLK output
	 *
	 * The available MCLK range is 32x, 48x... 512x. The rate
	 * could be from 8kHz to 192kH.
	 */
	switch (mclk / rate) {
	case 32:
		scr |= FUNC0(4);
		break;
	case 64:
		scr |= FUNC0(3);
		break;
	case 128:
		scr |= FUNC0(2);
		break;
	case 256:
		scr |= FUNC0(1);
		break;
	case 512:
		scr |= FUNC0(0);
		break;
	case 48:
		scr |= FUNC0(3);
		break;
	case 96:
		scr |= FUNC0(2);
		break;
	case 192:
		scr |= FUNC0(1);
		break;
	case 384:
		scr |= FUNC0(0);
		break;
	default:
		return -EINVAL;
	}

	FUNC2(scr, master_saif->base + SAIF_CTRL);

	return 0;
}