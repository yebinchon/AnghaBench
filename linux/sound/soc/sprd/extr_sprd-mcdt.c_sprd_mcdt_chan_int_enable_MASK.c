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
struct sprd_mcdt_chan_callback {int dummy; } ;
struct sprd_mcdt_chan {int int_enable; int type; struct sprd_mcdt_chan_callback* cb; int /*<<< orphan*/  id; scalar_t__ dma_enable; struct sprd_mcdt_dev* mcdt; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MCDT_ADC_FIFO_AF_INT ; 
 int /*<<< orphan*/  MCDT_DAC_FIFO_AE_INT ; 
 int /*<<< orphan*/  MCDT_FIFO_LENGTH ; 
#define  SPRD_MCDT_ADC_CHAN 129 
#define  SPRD_MCDT_DAC_CHAN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct sprd_mcdt_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sprd_mcdt_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sprd_mcdt_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sprd_mcdt_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sprd_mcdt_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sprd_mcdt_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct sprd_mcdt_chan *chan, u32 water_mark,
			      struct sprd_mcdt_chan_callback *cb)
{
	struct sprd_mcdt_dev *mcdt = chan->mcdt;
	unsigned long flags;
	int ret = 0;

	FUNC1(&mcdt->lock, flags);

	if (chan->dma_enable || chan->int_enable) {
		FUNC0(mcdt->dev, "Failed to set interrupt mode.\n");
		FUNC2(&mcdt->lock, flags);
		return -EINVAL;
	}

	switch (chan->type) {
	case SPRD_MCDT_ADC_CHAN:
		FUNC3(mcdt, chan->id);
		FUNC4(mcdt, chan->id, water_mark,
					    MCDT_FIFO_LENGTH - 1);
		FUNC6(mcdt, chan->id,
				      MCDT_ADC_FIFO_AF_INT, true);
		FUNC5(mcdt, chan->id, true);
		break;

	case SPRD_MCDT_DAC_CHAN:
		FUNC7(mcdt, chan->id);
		FUNC8(mcdt, chan->id,
					    MCDT_FIFO_LENGTH - 1, water_mark);
		FUNC6(mcdt, chan->id,
				      MCDT_DAC_FIFO_AE_INT, true);
		FUNC5(mcdt, chan->id, true);
		break;

	default:
		FUNC0(mcdt->dev, "Unsupported channel type\n");
		ret = -EINVAL;
	}

	if (!ret) {
		chan->cb = cb;
		chan->int_enable = true;
	}

	FUNC2(&mcdt->lock, flags);

	return ret;
}