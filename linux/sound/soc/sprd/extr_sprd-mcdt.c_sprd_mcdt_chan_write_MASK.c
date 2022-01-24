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
struct sprd_mcdt_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
struct sprd_mcdt_chan {int /*<<< orphan*/  id; scalar_t__ dma_enable; struct sprd_mcdt_dev* mcdt; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  MCDT_DAC_FIFO_REAL_FULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (struct sprd_mcdt_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sprd_mcdt_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sprd_mcdt_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct sprd_mcdt_chan *chan, char *tx_buf, u32 size)
{
	struct sprd_mcdt_dev *mcdt = chan->mcdt;
	unsigned long flags;
	int avail, i = 0, words = size / 4;
	u32 *buf = (u32 *)tx_buf;

	FUNC1(&mcdt->lock, flags);

	if (chan->dma_enable) {
		FUNC0(mcdt->dev,
			"Can not write data when DMA mode enabled\n");
		FUNC2(&mcdt->lock, flags);
		return -EINVAL;
	}

	if (FUNC3(mcdt, chan->id, MCDT_DAC_FIFO_REAL_FULL)) {
		FUNC0(mcdt->dev, "Channel fifo is full now\n");
		FUNC2(&mcdt->lock, flags);
		return -EBUSY;
	}

	avail = FUNC4(mcdt, chan->id);
	if (size > avail) {
		FUNC0(mcdt->dev,
			"Data size is larger than the available fifo size\n");
		FUNC2(&mcdt->lock, flags);
		return -EBUSY;
	}

	while (i++ < words)
		FUNC5(mcdt, chan->id, *buf++);

	FUNC2(&mcdt->lock, flags);
	return 0;
}