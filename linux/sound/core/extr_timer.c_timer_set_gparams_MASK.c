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
struct snd_timer_gparams {int /*<<< orphan*/  period_den; int /*<<< orphan*/  period_num; int /*<<< orphan*/  tid; } ;
struct TYPE_2__ {int (* set_period ) (struct snd_timer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct snd_timer {TYPE_1__ hw; int /*<<< orphan*/  open_list_head; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  register_mutex ; 
 struct snd_timer* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct snd_timer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_timer_gparams *gparams)
{
	struct snd_timer *t;
	int err;

	FUNC1(&register_mutex);
	t = FUNC3(&gparams->tid);
	if (!t) {
		err = -ENODEV;
		goto _error;
	}
	if (!FUNC0(&t->open_list_head)) {
		err = -EBUSY;
		goto _error;
	}
	if (!t->hw.set_period) {
		err = -ENOSYS;
		goto _error;
	}
	err = t->hw.set_period(t, gparams->period_num, gparams->period_den);
_error:
	FUNC2(&register_mutex);
	return err;
}