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
typedef  int u32 ;
struct mxs_saif {int mclk_in_use; scalar_t__ base; int /*<<< orphan*/  clk; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BM_SAIF_CTRL_CLKGATE ; 
 int /*<<< orphan*/  BM_SAIF_CTRL_RUN ; 
 int /*<<< orphan*/  BM_SAIF_CTRL_SFTRST ; 
 int BM_SAIF_STAT_BUSY ; 
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ MXS_CLR_ADDR ; 
 scalar_t__ MXS_SET_ADDR ; 
 scalar_t__ SAIF_CTRL ; 
 scalar_t__ SAIF_STAT ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct mxs_saif** mxs_saif ; 
 struct mxs_saif* FUNC4 (struct mxs_saif*) ; 
 int FUNC5 (struct mxs_saif*,unsigned int,unsigned int) ; 

int FUNC6(unsigned int saif_id, unsigned int mclk,
					unsigned int rate)
{
	struct mxs_saif *saif = mxs_saif[saif_id];
	u32 stat;
	int ret;
	struct mxs_saif *master_saif;

	if (!saif)
		return -EINVAL;

	/* Clear Reset */
	FUNC1(BM_SAIF_CTRL_SFTRST,
		saif->base + SAIF_CTRL + MXS_CLR_ADDR);

	/* FIXME: need clear clk gate for register r/w */
	FUNC1(BM_SAIF_CTRL_CLKGATE,
		saif->base + SAIF_CTRL + MXS_CLR_ADDR);

	master_saif = FUNC4(saif);
	if (saif != master_saif) {
		FUNC3(saif->dev, "can not get mclk from a non-master saif\n");
		return -EINVAL;
	}

	stat = FUNC0(saif->base + SAIF_STAT);
	if (stat & BM_SAIF_STAT_BUSY) {
		FUNC3(saif->dev, "error: busy\n");
		return -EBUSY;
	}

	saif->mclk_in_use = 1;
	ret = FUNC5(saif, mclk, rate);
	if (ret)
		return ret;

	ret = FUNC2(saif->clk);
	if (ret)
		return ret;

	/* enable MCLK output */
	FUNC1(BM_SAIF_CTRL_RUN,
		saif->base + SAIF_CTRL + MXS_SET_ADDR);

	return 0;
}