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
struct lbuf {struct lbuf* l_redrive_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct lbuf*) ; 
 struct lbuf* log_redrive_list ; 
 int /*<<< orphan*/  log_redrive_lock ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(void *arg)
{
	struct lbuf *bp;

	do {
		FUNC6(&log_redrive_lock);
		while ((bp = log_redrive_list)) {
			log_redrive_list = bp->l_redrive_next;
			bp->l_redrive_next = NULL;
			FUNC7(&log_redrive_lock);
			FUNC3(bp);
			FUNC6(&log_redrive_lock);
		}

		if (FUNC0(current)) {
			FUNC7(&log_redrive_lock);
			FUNC8();
		} else {
			FUNC5(TASK_INTERRUPTIBLE);
			FUNC7(&log_redrive_lock);
			FUNC4();
		}
	} while (!FUNC2());

	FUNC1("jfsIOWait being killed!");
	return 0;
}