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
struct sprd_mcdt_chan {int int_enable; int type; int /*<<< orphan*/  id; struct sprd_mcdt_dev* mcdt; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCDT_ADC_FIFO_AF_INT ; 
 int /*<<< orphan*/  MCDT_DAC_FIFO_AE_INT ; 
#define  SPRD_MCDT_ADC_CHAN 129 
#define  SPRD_MCDT_DAC_CHAN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct sprd_mcdt_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sprd_mcdt_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sprd_mcdt_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct sprd_mcdt_chan *chan)
{
	struct sprd_mcdt_dev *mcdt = chan->mcdt;
	unsigned long flags;

	FUNC0(&mcdt->lock, flags);

	if (!chan->int_enable) {
		FUNC1(&mcdt->lock, flags);
		return;
	}

	switch (chan->type) {
	case SPRD_MCDT_ADC_CHAN:
		FUNC4(mcdt, chan->id,
				      MCDT_ADC_FIFO_AF_INT, false);
		FUNC3(mcdt, chan->id, MCDT_ADC_FIFO_AF_INT);
		FUNC2(mcdt, chan->id, false);
		break;

	case SPRD_MCDT_DAC_CHAN:
		FUNC4(mcdt, chan->id,
				      MCDT_DAC_FIFO_AE_INT, false);
		FUNC3(mcdt, chan->id, MCDT_DAC_FIFO_AE_INT);
		FUNC2(mcdt, chan->id, false);
		break;

	default:
		break;
	}

	chan->int_enable = false;
	FUNC1(&mcdt->lock, flags);
}