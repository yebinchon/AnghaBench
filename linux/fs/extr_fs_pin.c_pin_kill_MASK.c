#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  entry; } ;
typedef  TYPE_1__ wait_queue_entry_t ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct fs_pin {int done; TYPE_3__ wait; int /*<<< orphan*/  (* kill ) (struct fs_pin*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct fs_pin*) ; 

void FUNC11(struct fs_pin *p)
{
	wait_queue_entry_t wait;

	if (!p) {
		FUNC5();
		return;
	}
	FUNC1(&wait);
	FUNC8(&p->wait.lock);
	if (FUNC2(!p->done)) {
		p->done = -1;
		FUNC9(&p->wait.lock);
		FUNC5();
		p->kill(p);
		return;
	}
	if (p->done > 0) {
		FUNC9(&p->wait.lock);
		FUNC5();
		return;
	}
	FUNC0(&p->wait, &wait);
	while (1) {
		FUNC7(TASK_UNINTERRUPTIBLE);
		FUNC9(&p->wait.lock);
		FUNC5();
		FUNC6();
		FUNC4();
		if (FUNC2(FUNC3(&wait.entry)))
			break;
		/* OK, we know p couldn't have been freed yet */
		FUNC8(&p->wait.lock);
		if (p->done > 0) {
			FUNC9(&p->wait.lock);
			break;
		}
	}
	FUNC5();
}