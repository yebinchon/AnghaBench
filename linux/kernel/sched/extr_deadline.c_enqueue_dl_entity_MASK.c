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
struct sched_dl_entity {int /*<<< orphan*/  deadline; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENQUEUE_REPLENISH ; 
 int ENQUEUE_RESTORE ; 
 int ENQUEUE_WAKEUP ; 
 int /*<<< orphan*/  FUNC1 (struct sched_dl_entity*) ; 
 int /*<<< orphan*/  FUNC2 (struct sched_dl_entity*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sched_dl_entity*) ; 
 int /*<<< orphan*/  FUNC5 (struct sched_dl_entity*,struct sched_dl_entity*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sched_dl_entity*) ; 
 int /*<<< orphan*/  FUNC9 (struct sched_dl_entity*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sched_dl_entity*,struct sched_dl_entity*) ; 

__attribute__((used)) static void
FUNC11(struct sched_dl_entity *dl_se,
		  struct sched_dl_entity *pi_se, int flags)
{
	FUNC0(FUNC4(dl_se));

	/*
	 * If this is a wakeup or a new instance, the scheduling
	 * parameters of the task might need updating. Otherwise,
	 * we want a replenishment of its runtime.
	 */
	if (flags & ENQUEUE_WAKEUP) {
		FUNC9(dl_se, flags);
		FUNC10(dl_se, pi_se);
	} else if (flags & ENQUEUE_REPLENISH) {
		FUNC5(dl_se, pi_se);
	} else if ((flags & ENQUEUE_RESTORE) &&
		  FUNC3(dl_se->deadline,
				 FUNC6(FUNC7(FUNC2(dl_se))))) {
		FUNC8(dl_se);
	}

	FUNC1(dl_se);
}