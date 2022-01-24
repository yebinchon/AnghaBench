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
struct viadev {unsigned int shadow_shift; unsigned char in_interrupt; scalar_t__ fragsize; scalar_t__ hwptr_done; scalar_t__ running; struct snd_pcm_substream* substream; } ;
struct via82xx {unsigned int num_devs; int /*<<< orphan*/  reg_lock; struct viadev* devs; } ;
struct snd_pcm_substream {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  OFFSET_STATUS ; 
 int /*<<< orphan*/  SGD_SHADOW ; 
 unsigned int VIA8233_SHADOW_STAT_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (struct viadev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct via82xx*,int /*<<< orphan*/ ) ; 
 unsigned char VIA_REG_STAT_ACTIVE ; 
 unsigned int VIA_REG_STAT_EOL ; 
 unsigned int VIA_REG_STAT_FLAG ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct via82xx *chip = dev_id;
	unsigned int status;
	unsigned int i;
	int irqreturn = 0;

	/* check status for each stream */
	FUNC6(&chip->reg_lock);
	status = FUNC3(FUNC2(chip, SGD_SHADOW));

	for (i = 0; i < chip->num_devs; i++) {
		struct viadev *viadev = &chip->devs[i];
		struct snd_pcm_substream *substream;
		unsigned char c_status, shadow_status;

		shadow_status = (status >> viadev->shadow_shift) &
			(VIA8233_SHADOW_STAT_ACTIVE|VIA_REG_STAT_EOL|
			 VIA_REG_STAT_FLAG);
		c_status = shadow_status & (VIA_REG_STAT_EOL|VIA_REG_STAT_FLAG);
		if (!c_status)
			continue;

		substream = viadev->substream;
		if (substream && viadev->running) {
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
			if (shadow_status & VIA8233_SHADOW_STAT_ACTIVE)
				viadev->in_interrupt |= VIA_REG_STAT_ACTIVE;
			FUNC7(&chip->reg_lock);

			FUNC5(substream);

			FUNC6(&chip->reg_lock);
			viadev->in_interrupt = 0;
		}
		FUNC4(c_status, FUNC1(viadev, OFFSET_STATUS)); /* ack */
		irqreturn = 1;
	}
	FUNC7(&chip->reg_lock);
	return FUNC0(irqreturn);
}