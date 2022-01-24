#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct slot_map {int c; TYPE_2__ q; int /*<<< orphan*/ * map; } ;
struct TYPE_7__ {int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__ wait ; 

__attribute__((used)) static void FUNC10(struct slot_map *m)
{
	FUNC0(wait);
	FUNC8(&m->q.lock);
	if (m->c != -1) {
		for (;;) {
			if (FUNC4(FUNC5(&wait.entry)))
				FUNC1(&m->q, &wait);
			FUNC7(TASK_UNINTERRUPTIBLE);

			if (m->c == -1)
				break;

			FUNC9(&m->q.lock);
			FUNC6();
			FUNC8(&m->q.lock);
		}
		FUNC2(&m->q, &wait);
		FUNC3(TASK_RUNNING);
	}
	m->map = NULL;
	FUNC9(&m->q.lock);
}