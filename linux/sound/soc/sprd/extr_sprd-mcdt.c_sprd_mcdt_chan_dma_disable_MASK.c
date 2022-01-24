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
struct sprd_mcdt_dev {int /*<<< orphan*/  lock; } ;
struct sprd_mcdt_chan {int dma_enable; int type; int /*<<< orphan*/  id; struct sprd_mcdt_dev* mcdt; } ;

/* Variables and functions */
#define  SPRD_MCDT_ADC_CHAN 129 
#define  SPRD_MCDT_DAC_CHAN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct sprd_mcdt_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sprd_mcdt_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sprd_mcdt_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sprd_mcdt_dev*,int /*<<< orphan*/ ) ; 

void FUNC6(struct sprd_mcdt_chan *chan)
{
	struct sprd_mcdt_dev *mcdt = chan->mcdt;
	unsigned long flags;

	FUNC0(&mcdt->lock, flags);

	if (!chan->dma_enable) {
		FUNC1(&mcdt->lock, flags);
		return;
	}

	switch (chan->type) {
	case SPRD_MCDT_ADC_CHAN:
		FUNC2(mcdt, chan->id, false);
		FUNC3(mcdt, chan->id);
		break;

	case SPRD_MCDT_DAC_CHAN:
		FUNC4(mcdt, chan->id, false);
		FUNC5(mcdt, chan->id);
		break;

	default:
		break;
	}

	chan->dma_enable = false;
	FUNC1(&mcdt->lock, flags);
}