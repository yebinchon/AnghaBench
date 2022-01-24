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
struct uniperif {scalar_t__ state; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  substream; int /*<<< orphan*/  dev; scalar_t__ underflow_enabled; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  EPERM ; 
 unsigned int FUNC0 (struct uniperif*) ; 
 unsigned int FUNC1 (struct uniperif*) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC2 (struct uniperif*) ; 
 int /*<<< orphan*/  FUNC3 (struct uniperif*) ; 
 int /*<<< orphan*/  FUNC4 (struct uniperif*) ; 
 int /*<<< orphan*/  FUNC5 (struct uniperif*,unsigned int) ; 
 unsigned int FUNC6 (struct uniperif*) ; 
 unsigned int FUNC7 (struct uniperif*) ; 
 unsigned int FUNC8 (struct uniperif*) ; 
 unsigned int FUNC9 (struct uniperif*) ; 
 scalar_t__ UNIPERIF_STATE_STARTED ; 
 scalar_t__ UNIPERIF_STATE_STOPPED ; 
 scalar_t__ UNIPERIF_STATE_UNDERFLOW ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC18(int irq, void *dev_id)
{
	irqreturn_t ret = IRQ_NONE;
	struct uniperif *player = dev_id;
	unsigned int status;
	unsigned int tmp;

	FUNC15(&player->irq_lock);
	if (!player->substream)
		goto irq_spin_unlock;

	FUNC13(player->substream);
	if (player->state == UNIPERIF_STATE_STOPPED)
		goto stream_unlock;

	/* Get interrupt status & clear them immediately */
	status = FUNC0(player);
	FUNC5(player, status);

	/* Check for fifo error (underrun) */
	if (FUNC17(status & FUNC9(player))) {
		FUNC11(player->dev, "FIFO underflow error detected\n");

		/* Interrupt is just for information when underflow recovery */
		if (player->underflow_enabled) {
			/* Update state to underflow */
			player->state = UNIPERIF_STATE_UNDERFLOW;

		} else {
			/* Disable interrupt so doesn't continually fire */
			FUNC4(player);

			/* Stop the player */
			FUNC12(player->substream);
		}

		ret = IRQ_HANDLED;
	}

	/* Check for dma error (overrun) */
	if (FUNC17(status & FUNC8(player))) {
		FUNC11(player->dev, "DMA error detected\n");

		/* Disable interrupt so doesn't continually fire */
		FUNC3(player);

		/* Stop the player */
		FUNC12(player->substream);

		ret = IRQ_HANDLED;
	}

	/* Check for underflow recovery done */
	if (FUNC17(status & FUNC6(player))) {
		if (!player->underflow_enabled) {
			FUNC11(player->dev,
				"unexpected Underflow recovering\n");
			ret = -EPERM;
			goto stream_unlock;
		}
		/* Read the underflow recovery duration */
		tmp = FUNC1(player);
		FUNC10(player->dev, "Underflow recovered (%d LR clocks max)\n",
			tmp);

		/* Clear the underflow recovery duration */
		FUNC2(player);

		/* Update state to started */
		player->state = UNIPERIF_STATE_STARTED;

		ret = IRQ_HANDLED;
	}

	/* Check if underflow recovery failed */
	if (FUNC17(status &
		     FUNC7(player))) {
		FUNC11(player->dev, "Underflow recovery failed\n");

		/* Stop the player */
		FUNC12(player->substream);

		ret = IRQ_HANDLED;
	}

stream_unlock:
	FUNC14(player->substream);
irq_spin_unlock:
	FUNC16(&player->irq_lock);

	return ret;
}