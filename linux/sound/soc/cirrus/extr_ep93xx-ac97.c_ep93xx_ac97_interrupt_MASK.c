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
struct ep93xx_ac97_info {int /*<<< orphan*/  done; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC97GIS ; 
 int /*<<< orphan*/  AC97IM ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (struct ep93xx_ac97_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ep93xx_ac97_info*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct ep93xx_ac97_info *info = dev_id;
	unsigned status, mask;

	/*
	 * Just mask out the interrupt and wake up the waiting thread.
	 * Interrupts are cleared via reading/writing to slot 1 & 2 registers by
	 * the waiting thread.
	 */
	status = FUNC1(info, AC97GIS);
	mask = FUNC1(info, AC97IM);
	mask &= ~status;
	FUNC2(info, AC97IM, mask);

	FUNC0(&info->done);
	return IRQ_HANDLED;
}