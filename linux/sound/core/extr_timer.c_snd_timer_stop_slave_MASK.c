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
struct snd_timer_instance {int flags; TYPE_1__* timer; int /*<<< orphan*/  active_list; int /*<<< orphan*/  ack_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  SNDRV_TIMER_EVENT_PAUSE ; 
 int /*<<< orphan*/  SNDRV_TIMER_EVENT_STOP ; 
 int SNDRV_TIMER_IFLG_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  slave_active_lock ; 
 int /*<<< orphan*/  FUNC1 (struct snd_timer_instance*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct snd_timer_instance *timeri, bool stop)
{
	unsigned long flags;

	FUNC3(&slave_active_lock, flags);
	if (!(timeri->flags & SNDRV_TIMER_IFLG_RUNNING)) {
		FUNC5(&slave_active_lock, flags);
		return -EBUSY;
	}
	timeri->flags &= ~SNDRV_TIMER_IFLG_RUNNING;
	if (timeri->timer) {
		FUNC2(&timeri->timer->lock);
		FUNC0(&timeri->ack_list);
		FUNC0(&timeri->active_list);
		FUNC1(timeri, stop ? SNDRV_TIMER_EVENT_STOP :
				  SNDRV_TIMER_EVENT_PAUSE);
		FUNC4(&timeri->timer->lock);
	}
	FUNC5(&slave_active_lock, flags);
	return 0;
}