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
struct uniperif {scalar_t__ state; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  substream; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned int FUNC0 (struct uniperif*) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct uniperif*,unsigned int) ; 
 unsigned int FUNC2 (struct uniperif*) ; 
 scalar_t__ UNIPERIF_STATE_STOPPED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *dev_id)
{
	irqreturn_t ret = IRQ_NONE;
	struct uniperif *reader = dev_id;
	unsigned int status;

	FUNC8(&reader->irq_lock);
	if (!reader->substream)
		goto irq_spin_unlock;

	FUNC6(reader->substream);
	if (reader->state == UNIPERIF_STATE_STOPPED) {
		/* Unexpected IRQ: do nothing */
		FUNC4(reader->dev, "unexpected IRQ\n");
		goto stream_unlock;
	}

	/* Get interrupt status & clear them immediately */
	status = FUNC0(reader);
	FUNC1(reader, status);

	/* Check for fifo overflow error */
	if (FUNC10(status & FUNC2(reader))) {
		FUNC3(reader->dev, "FIFO error detected\n");

		FUNC5(reader->substream);

		ret = IRQ_HANDLED;
	}

stream_unlock:
	FUNC7(reader->substream);
irq_spin_unlock:
	FUNC9(&reader->irq_lock);

	return ret;
}