#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_timer_instance {int flags; unsigned long ticks; unsigned long cticks; int /*<<< orphan*/  active_list; scalar_t__ pticks; struct snd_timer* timer; } ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  (* start ) (struct snd_timer*) ;} ;
struct snd_timer {unsigned long sticks; int /*<<< orphan*/  lock; scalar_t__ running; TYPE_2__ hw; int /*<<< orphan*/  flags; int /*<<< orphan*/  active_list_head; TYPE_1__* card; } ;
struct TYPE_3__ {scalar_t__ shutdown; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  SNDRV_TIMER_EVENT_CONTINUE ; 
 int /*<<< orphan*/  SNDRV_TIMER_EVENT_START ; 
 int /*<<< orphan*/  SNDRV_TIMER_FLG_RESCHED ; 
 int SNDRV_TIMER_HW_SLAVE ; 
 int SNDRV_TIMER_IFLG_DEAD ; 
 int SNDRV_TIMER_IFLG_RUNNING ; 
 int SNDRV_TIMER_IFLG_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_timer_instance*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_timer*) ; 

__attribute__((used)) static int FUNC5(struct snd_timer_instance *timeri,
			    bool start, unsigned long ticks)
{
	struct snd_timer *timer;
	int result;
	unsigned long flags;

	timer = timeri->timer;
	if (!timer)
		return -EINVAL;

	FUNC2(&timer->lock, flags);
	if (timeri->flags & SNDRV_TIMER_IFLG_DEAD) {
		result = -EINVAL;
		goto unlock;
	}
	if (timer->card && timer->card->shutdown) {
		result = -ENODEV;
		goto unlock;
	}
	if (timeri->flags & (SNDRV_TIMER_IFLG_RUNNING |
			     SNDRV_TIMER_IFLG_START)) {
		result = -EBUSY;
		goto unlock;
	}

	if (start)
		timeri->ticks = timeri->cticks = ticks;
	else if (!timeri->cticks)
		timeri->cticks = 1;
	timeri->pticks = 0;

	FUNC0(&timeri->active_list, &timer->active_list_head);
	if (timer->running) {
		if (timer->hw.flags & SNDRV_TIMER_HW_SLAVE)
			goto __start_now;
		timer->flags |= SNDRV_TIMER_FLG_RESCHED;
		timeri->flags |= SNDRV_TIMER_IFLG_START;
		result = 1; /* delayed start */
	} else {
		if (start)
			timer->sticks = ticks;
		timer->hw.start(timer);
	      __start_now:
		timer->running++;
		timeri->flags |= SNDRV_TIMER_IFLG_RUNNING;
		result = 0;
	}
	FUNC1(timeri, start ? SNDRV_TIMER_EVENT_START :
			  SNDRV_TIMER_EVENT_CONTINUE);
 unlock:
	FUNC3(&timer->lock, flags);
	return result;
}