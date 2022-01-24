#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct viadev {unsigned char in_interrupt; scalar_t__ substream; scalar_t__ fragsize; scalar_t__ hwptr_done; scalar_t__ running; } ;
struct via82xx {unsigned int intr_mask; unsigned int num_devs; int /*<<< orphan*/  reg_lock; struct viadev* devs; TYPE_1__* rmidi; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  OFFSET_STATUS ; 
 int /*<<< orphan*/  SGD_SHADOW ; 
 int /*<<< orphan*/  FUNC0 (struct viadev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct via82xx*,int /*<<< orphan*/ ) ; 
 unsigned char VIA_REG_STAT_EOL ; 
 unsigned char VIA_REG_STAT_FLAG ; 
 unsigned char VIA_REG_STAT_STOPPED ; 
 unsigned char FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct via82xx *chip = dev_id;
	unsigned int status;
	unsigned int i;

	status = FUNC3(FUNC1(chip, SGD_SHADOW));
	if (! (status & chip->intr_mask)) {
		if (chip->rmidi)
			/* check mpu401 interrupt */
			return FUNC5(irq, chip->rmidi->private_data);
		return IRQ_NONE;
	}

	/* check status for each stream */
	FUNC7(&chip->reg_lock);
	for (i = 0; i < chip->num_devs; i++) {
		struct viadev *viadev = &chip->devs[i];
		unsigned char c_status = FUNC2(FUNC0(viadev, OFFSET_STATUS));
		if (! (c_status & (VIA_REG_STAT_EOL|VIA_REG_STAT_FLAG|VIA_REG_STAT_STOPPED)))
			continue;
		if (viadev->substream && viadev->running) {
			/*
			 * Update hwptr_done based on 'period elapsed'
			 * interrupts. We'll use it, when the chip returns 0 
			 * for OFFSET_CURR_COUNT.
			 */
			if (c_status & VIA_REG_STAT_EOL)
				viadev->hwptr_done = 0;
			else
				viadev->hwptr_done += viadev->fragsize;
			viadev->in_interrupt = c_status;
			FUNC8(&chip->reg_lock);
			FUNC6(viadev->substream);
			FUNC7(&chip->reg_lock);
			viadev->in_interrupt = 0;
		}
		FUNC4(c_status, FUNC0(viadev, OFFSET_STATUS)); /* ack */
	}
	FUNC8(&chip->reg_lock);
	return IRQ_HANDLED;
}