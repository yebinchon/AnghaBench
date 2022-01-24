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
struct snd_opl3 {struct snd_hwdep* hwdep; int /*<<< orphan*/  sys_timer_lock; scalar_t__ sys_timer_status; int /*<<< orphan*/  tlist; } ;
struct snd_hwdep {int /*<<< orphan*/  open_wait; int /*<<< orphan*/  open_mutex; int /*<<< orphan*/  used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_opl3*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct snd_opl3 * opl3)
{
	unsigned long flags;
	struct snd_hwdep *hwdep;

	/* Stop system timer */
	FUNC4(&opl3->sys_timer_lock, flags);
	if (opl3->sys_timer_status) {
		FUNC0(&opl3->tlist);
		opl3->sys_timer_status = 0;
	}
	FUNC5(&opl3->sys_timer_lock, flags);

	FUNC3(opl3);
	hwdep = opl3->hwdep;
	FUNC1(&hwdep->open_mutex);
	hwdep->used--;
	FUNC2(&hwdep->open_mutex);
	FUNC6(&hwdep->open_wait);
}