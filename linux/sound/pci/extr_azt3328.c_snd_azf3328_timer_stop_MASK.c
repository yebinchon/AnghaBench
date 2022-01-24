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
struct snd_timer {int dummy; } ;
struct snd_azf3328 {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 scalar_t__ IDX_IO_TIMER_VALUE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_azf3328*,scalar_t__,int) ; 
 struct snd_azf3328* FUNC1 (struct snd_timer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC4(struct snd_timer *timer)
{
	struct snd_azf3328 *chip;
	unsigned long flags;

	chip = FUNC1(timer);
	FUNC2(&chip->reg_lock, flags);
	/* disable timer countdown and interrupt */
	/* Hmm, should we write TIMER_IRQ_ACK here?
	   YES indeed, otherwise a rogue timer operation - which prompts
	   ALSA(?) to call repeated stop() in vain, but NOT start() -
	   will never end (value 0x03 is kept shown in control byte).
	   Simply manually poking 0x04 _once_ immediately successfully stops
	   the hardware/ALSA interrupt activity. */
	FUNC0(chip, IDX_IO_TIMER_VALUE + 3, 0x04);
	FUNC3(&chip->reg_lock, flags);
	return 0;
}