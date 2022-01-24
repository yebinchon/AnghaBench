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
struct snd_timer {int sticks; } ;
struct snd_azf3328 {int /*<<< orphan*/  reg_lock; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IDX_IO_TIMER_VALUE ; 
 unsigned int TIMER_COUNTDOWN_ENABLE ; 
 unsigned int TIMER_IRQ_ENABLE ; 
 int TIMER_VALUE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int seqtimer_scaling ; 
 int /*<<< orphan*/  FUNC1 (struct snd_azf3328*,int /*<<< orphan*/ ,unsigned int) ; 
 struct snd_azf3328* FUNC2 (struct snd_timer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC5(struct snd_timer *timer)
{
	struct snd_azf3328 *chip;
	unsigned long flags;
	unsigned int delay;

	chip = FUNC2(timer);
	delay = ((timer->sticks * seqtimer_scaling) - 1) & TIMER_VALUE_MASK;
	if (delay < 49) {
		/* uhoh, that's not good, since user-space won't know about
		 * this timing tweak
		 * (we need to do it to avoid a lockup, though) */

		FUNC0(chip->card->dev, "delay was too low (%d)!\n", delay);
		delay = 49; /* minimum time is 49 ticks */
	}
	FUNC0(chip->card->dev, "setting timer countdown value %d\n", delay);
	delay |= TIMER_COUNTDOWN_ENABLE | TIMER_IRQ_ENABLE;
	FUNC3(&chip->reg_lock, flags);
	FUNC1(chip, IDX_IO_TIMER_VALUE, delay);
	FUNC4(&chip->reg_lock, flags);
	return 0;
}