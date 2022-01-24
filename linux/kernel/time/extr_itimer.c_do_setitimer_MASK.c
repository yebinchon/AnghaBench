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
struct task_struct {TYPE_2__* sighand; TYPE_1__* signal; } ;
struct itimerval {int /*<<< orphan*/  it_interval; int /*<<< orphan*/  it_value; } ;
struct hrtimer {int dummy; } ;
typedef  void* ktime_t ;
struct TYPE_4__ {int /*<<< orphan*/  siglock; } ;
struct TYPE_3__ {void* it_real_incr; struct hrtimer real_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUCLOCK_PROF ; 
 int /*<<< orphan*/  CPUCLOCK_VIRT ; 
 int EINVAL ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
#define  ITIMER_PROF 130 
#define  ITIMER_REAL 129 
#define  ITIMER_VIRTUAL 128 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC0 (struct hrtimer*) ; 
 int /*<<< orphan*/  FUNC1 (struct hrtimer*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hrtimer*) ; 
 int /*<<< orphan*/  FUNC3 (struct hrtimer*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,int /*<<< orphan*/ ,struct itimerval*,struct itimerval*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int const,struct itimerval*,int /*<<< orphan*/ ) ; 

int FUNC11(int which, struct itimerval *value, struct itimerval *ovalue)
{
	struct task_struct *tsk = current;
	struct hrtimer *timer;
	ktime_t expires;

	/*
	 * Validate the timevals in value.
	 */
	if (!FUNC9(&value->it_value) ||
	    !FUNC9(&value->it_interval))
		return -EINVAL;

	switch (which) {
	case ITIMER_REAL:
again:
		FUNC6(&tsk->sighand->siglock);
		timer = &tsk->signal->real_timer;
		if (ovalue) {
			ovalue->it_value = FUNC3(timer);
			ovalue->it_interval
				= FUNC4(tsk->signal->it_real_incr);
		}
		/* We are sharing ->siglock with it_real_fn() */
		if (FUNC2(timer) < 0) {
			FUNC7(&tsk->sighand->siglock);
			FUNC0(timer);
			goto again;
		}
		expires = FUNC8(value->it_value);
		if (expires != 0) {
			tsk->signal->it_real_incr =
				FUNC8(value->it_interval);
			FUNC1(timer, expires, HRTIMER_MODE_REL);
		} else
			tsk->signal->it_real_incr = 0;

		FUNC10(ITIMER_REAL, value, 0);
		FUNC7(&tsk->sighand->siglock);
		break;
	case ITIMER_VIRTUAL:
		FUNC5(tsk, CPUCLOCK_VIRT, value, ovalue);
		break;
	case ITIMER_PROF:
		FUNC5(tsk, CPUCLOCK_PROF, value, ovalue);
		break;
	default:
		return -EINVAL;
	}
	return 0;
}