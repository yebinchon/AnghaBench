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
struct snd_timer {int sticks; } ;
struct snd_ad1816a {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD1816A_INTERRUPT_ENABLE ; 
 int /*<<< orphan*/  AD1816A_TIMER_BASE_COUNT ; 
 unsigned short AD1816A_TIMER_ENABLE ; 
 unsigned short FUNC0 (struct snd_ad1816a*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ad1816a*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ad1816a*,int /*<<< orphan*/ ,unsigned short,int) ; 
 struct snd_ad1816a* FUNC3 (struct snd_timer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct snd_timer *timer)
{
	unsigned short bits;
	unsigned long flags;
	struct snd_ad1816a *chip = FUNC3(timer);
	FUNC4(&chip->lock, flags);
	bits = FUNC0(chip, AD1816A_INTERRUPT_ENABLE);

	if (!(bits & AD1816A_TIMER_ENABLE)) {
		FUNC1(chip, AD1816A_TIMER_BASE_COUNT,
			timer->sticks & 0xffff);

		FUNC2(chip, AD1816A_INTERRUPT_ENABLE,
			AD1816A_TIMER_ENABLE, 0xffff);
	}
	FUNC5(&chip->lock, flags);
	return 0;
}