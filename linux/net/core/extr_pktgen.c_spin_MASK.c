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
struct pktgen_dev {int /*<<< orphan*/  delay; int /*<<< orphan*/  next_tx; int /*<<< orphan*/  idle_acc; scalar_t__ running; } ;
struct hrtimer_sleeper {int /*<<< orphan*/  timer; scalar_t__ task; } ;
typedef  int s64 ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hrtimer_sleeper*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hrtimer_sleeper*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct pktgen_dev *pkt_dev, ktime_t spin_until)
{
	ktime_t start_time, end_time;
	s64 remaining;
	struct hrtimer_sleeper t;

	FUNC4(&t, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
	FUNC5(&t.timer, spin_until);

	remaining = FUNC11(FUNC3(&t.timer));
	if (remaining <= 0)
		goto out;

	start_time = FUNC9();
	if (remaining < 100000) {
		/* for small delays (<100us), just loop until limit is reached */
		do {
			end_time = FUNC9();
		} while (FUNC8(end_time, spin_until) < 0);
	} else {
		do {
			FUNC14(TASK_INTERRUPTIBLE);
			FUNC6(&t, HRTIMER_MODE_ABS);

			if (FUNC12(t.task))
				FUNC13();

			FUNC2(&t.timer);
		} while (t.task && pkt_dev->running && !FUNC15(current));
		FUNC0(TASK_RUNNING);
		end_time = FUNC9();
	}

	pkt_dev->idle_acc += FUNC11(FUNC10(end_time, start_time));
out:
	pkt_dev->next_tx = FUNC7(spin_until, pkt_dev->delay);
	FUNC1(&t.timer);
}