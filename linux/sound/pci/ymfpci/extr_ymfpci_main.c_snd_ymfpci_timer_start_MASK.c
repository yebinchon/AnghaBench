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
struct snd_ymfpci {int timer_ticks; int /*<<< orphan*/  reg_lock; } ;
struct snd_timer {int sticks; } ;

/* Variables and functions */
 int /*<<< orphan*/  YDSXGR_TIMERCOUNT ; 
 int /*<<< orphan*/  YDSXGR_TIMERCTRL ; 
 struct snd_ymfpci* FUNC0 (struct snd_timer*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ymfpci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ymfpci*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct snd_timer *timer)
{
	struct snd_ymfpci *chip;
	unsigned long flags;
	unsigned int count;

	chip = FUNC0(timer);
	FUNC3(&chip->reg_lock, flags);
	if (timer->sticks > 1) {
		chip->timer_ticks = timer->sticks;
		count = timer->sticks - 1;
	} else {
		/*
		 * Divisor 1 is not allowed; fake it by using divisor 2 and
		 * counting two ticks for each interrupt.
		 */
		chip->timer_ticks = 2;
		count = 2 - 1;
	}
	FUNC2(chip, YDSXGR_TIMERCOUNT, count);
	FUNC1(chip, YDSXGR_TIMERCTRL, 0x03);
	FUNC4(&chip->reg_lock, flags);
	return 0;
}