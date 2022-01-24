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
 int /*<<< orphan*/  MCDT_ADC_FIFO_REAL_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (struct sprd_mcdt_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sprd_mcdt_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sprd_mcdt_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct sprd_mcdt_chan *chan, char *rx_buf, u32 size)
{
	struct sprd_mcdt_dev *mcdt = chan->mcdt;
	unsigned long flags;
	int i = 0, avail, words = size / 4;
	u32 *buf = (u32 *)rx_buf;

	FUNC1(&mcdt->lock, flags);

	if (chan->dma_enable) {
		FUNC0(mcdt->dev, "Can not read data when DMA mode enabled\n");
		FUNC2(&mcdt->lock, flags);
		return -EINVAL;
	}

	if (FUNC5(mcdt, chan->id, MCDT_ADC_FIFO_REAL_EMPTY)) {
		FUNC0(mcdt->dev, "Channel fifo is empty\n");
		FUNC2(&mcdt->lock, flags);
		return -EBUSY;
	}

	avail = FUNC3(mcdt, chan->id);
	if (size > avail)
		words = avail / 4;

	while (i++ < words)
		FUNC4(mcdt, chan->id, buf++);

	FUNC2(&mcdt->lock, flags);
	return words * 4;
}