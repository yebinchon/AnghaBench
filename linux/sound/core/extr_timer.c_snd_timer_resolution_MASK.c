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
struct snd_timer_instance {struct snd_timer* timer; } ;
struct snd_timer {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct snd_timer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

unsigned long FUNC3(struct snd_timer_instance *timeri)
{
	struct snd_timer * timer;
	unsigned long ret = 0;
	unsigned long flags;

	if (timeri == NULL)
		return 0;
	timer = timeri->timer;
	if (timer) {
		FUNC1(&timer->lock, flags);
		ret = FUNC0(timer);
		FUNC2(&timer->lock, flags);
	}
	return ret;
}