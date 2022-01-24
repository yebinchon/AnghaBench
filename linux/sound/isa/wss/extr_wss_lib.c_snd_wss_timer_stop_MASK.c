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
struct snd_wss {int /*<<< orphan*/  reg_lock; int /*<<< orphan*/ * image; } ;
struct snd_timer {int dummy; } ;

/* Variables and functions */
 size_t CS4231_ALT_FEATURE_1 ; 
 int /*<<< orphan*/  CS4231_TIMER_ENABLE ; 
 struct snd_wss* FUNC0 (struct snd_timer*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_wss*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct snd_timer *timer)
{
	unsigned long flags;
	struct snd_wss *chip = FUNC0(timer);
	FUNC2(&chip->reg_lock, flags);
	chip->image[CS4231_ALT_FEATURE_1] &= ~CS4231_TIMER_ENABLE;
	FUNC1(chip, CS4231_ALT_FEATURE_1,
		    chip->image[CS4231_ALT_FEATURE_1]);
	FUNC3(&chip->reg_lock, flags);
	return 0;
}