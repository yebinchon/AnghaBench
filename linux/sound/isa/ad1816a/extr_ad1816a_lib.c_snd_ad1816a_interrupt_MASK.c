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
struct snd_ad1816a {int /*<<< orphan*/  lock; TYPE_1__* timer; scalar_t__ capture_substream; scalar_t__ playback_substream; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  sticks; } ;

/* Variables and functions */
 unsigned char AD1816A_CAPTURE_IRQ_PENDING ; 
 int /*<<< orphan*/  AD1816A_INTERRUPT_STATUS ; 
 unsigned char AD1816A_PLAYBACK_IRQ_PENDING ; 
 unsigned char AD1816A_TIMER_IRQ_PENDING ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned char FUNC0 (struct snd_ad1816a*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ad1816a*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct snd_ad1816a *chip = dev_id;
	unsigned char status;

	FUNC4(&chip->lock);
	status = FUNC0(chip, AD1816A_INTERRUPT_STATUS);
	FUNC5(&chip->lock);

	if ((status & AD1816A_PLAYBACK_IRQ_PENDING) && chip->playback_substream)
		FUNC2(chip->playback_substream);

	if ((status & AD1816A_CAPTURE_IRQ_PENDING) && chip->capture_substream)
		FUNC2(chip->capture_substream);

	if ((status & AD1816A_TIMER_IRQ_PENDING) && chip->timer)
		FUNC3(chip->timer, chip->timer->sticks);

	FUNC4(&chip->lock);
	FUNC1(chip, AD1816A_INTERRUPT_STATUS, 0x00);
	FUNC5(&chip->lock);
	return IRQ_HANDLED;
}