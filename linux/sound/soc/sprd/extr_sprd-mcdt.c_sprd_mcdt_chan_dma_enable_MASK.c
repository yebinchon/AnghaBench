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
struct sprd_mcdt_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
struct sprd_mcdt_chan {int dma_enable; int type; int /*<<< orphan*/  id; scalar_t__ int_enable; struct sprd_mcdt_dev* mcdt; } ;
typedef  enum sprd_mcdt_dma_chan { ____Placeholder_sprd_mcdt_dma_chan } sprd_mcdt_dma_chan ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MCDT_FIFO_LENGTH ; 
#define  SPRD_MCDT_ADC_CHAN 129 
#define  SPRD_MCDT_DAC_CHAN 128 
 int SPRD_MCDT_DMA_CH4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct sprd_mcdt_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sprd_mcdt_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sprd_mcdt_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sprd_mcdt_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sprd_mcdt_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sprd_mcdt_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sprd_mcdt_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sprd_mcdt_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sprd_mcdt_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sprd_mcdt_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC13(struct sprd_mcdt_chan *chan,
			      enum sprd_mcdt_dma_chan dma_chan,
			      u32 water_mark)
{
	struct sprd_mcdt_dev *mcdt = chan->mcdt;
	unsigned long flags;
	int ret = 0;

	FUNC1(&mcdt->lock, flags);

	if (chan->dma_enable || chan->int_enable ||
	    dma_chan > SPRD_MCDT_DMA_CH4) {
		FUNC0(mcdt->dev, "Failed to set DMA mode\n");
		FUNC2(&mcdt->lock, flags);
		return -EINVAL;
	}

	switch (chan->type) {
	case SPRD_MCDT_ADC_CHAN:
		FUNC6(mcdt, chan->id);
		FUNC7(mcdt, chan->id,
					    water_mark, MCDT_FIFO_LENGTH - 1);
		FUNC5(mcdt, chan->id, true);
		FUNC4(mcdt, chan->id, dma_chan);
		FUNC3(mcdt, chan->id, dma_chan);
		break;

	case SPRD_MCDT_DAC_CHAN:
		FUNC11(mcdt, chan->id);
		FUNC12(mcdt, chan->id,
					    MCDT_FIFO_LENGTH - 1, water_mark);
		FUNC10(mcdt, chan->id, true);
		FUNC9(mcdt, chan->id, dma_chan);
		FUNC8(mcdt, chan->id, dma_chan);
		break;

	default:
		FUNC0(mcdt->dev, "Unsupported channel type\n");
		ret = -EINVAL;
	}

	if (!ret)
		chan->dma_enable = true;

	FUNC2(&mcdt->lock, flags);

	return ret;
}