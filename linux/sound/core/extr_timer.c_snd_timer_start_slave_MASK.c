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
struct snd_timer_instance {int flags; TYPE_2__* timer; TYPE_1__* master; int /*<<< orphan*/  active_list; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  slave_active_head; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  SNDRV_TIMER_EVENT_CONTINUE ; 
 int /*<<< orphan*/  SNDRV_TIMER_EVENT_START ; 
 int SNDRV_TIMER_IFLG_DEAD ; 
 int SNDRV_TIMER_IFLG_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  slave_active_lock ; 
 int /*<<< orphan*/  FUNC1 (struct snd_timer_instance*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct snd_timer_instance *timeri,
				 bool start)
{
	unsigned long flags;
	int err;

	FUNC3(&slave_active_lock, flags);
	if (timeri->flags & SNDRV_TIMER_IFLG_DEAD) {
		err = -EINVAL;
		goto unlock;
	}
	if (timeri->flags & SNDRV_TIMER_IFLG_RUNNING) {
		err = -EBUSY;
		goto unlock;
	}
	timeri->flags |= SNDRV_TIMER_IFLG_RUNNING;
	if (timeri->master && timeri->timer) {
		FUNC2(&timeri->timer->lock);
		FUNC0(&timeri->active_list,
			      &timeri->master->slave_active_head);
		FUNC1(timeri, start ? SNDRV_TIMER_EVENT_START :
				  SNDRV_TIMER_EVENT_CONTINUE);
		FUNC4(&timeri->timer->lock);
	}
	err = 1; /* delayed start */
 unlock:
	FUNC5(&slave_active_lock, flags);
	return err;
}