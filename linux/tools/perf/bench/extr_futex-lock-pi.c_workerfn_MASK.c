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
struct worker {unsigned long ops; int /*<<< orphan*/  futex; int /*<<< orphan*/  tid; } ;

/* Variables and functions */
 scalar_t__ done ; 
 int /*<<< orphan*/  futex_flag ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  silent ; 
 int /*<<< orphan*/  thread_lock ; 
 int /*<<< orphan*/  thread_parent ; 
 int /*<<< orphan*/  thread_worker ; 
 int /*<<< orphan*/  threads_starting ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void *FUNC8(void *arg)
{
	struct worker *w = (struct worker *) arg;
	unsigned long ops = w->ops;

	FUNC4(&thread_lock);
	threads_starting--;
	if (!threads_starting)
		FUNC2(&thread_parent);
	FUNC3(&thread_worker, &thread_lock);
	FUNC5(&thread_lock);

	do {
		int ret;
	again:
		ret = FUNC0(w->futex, NULL, futex_flag);

		if (ret) { /* handle lock acquisition */
			if (!silent)
				FUNC7("thread %d: Could not lock pi-lock for %p (%d)",
				     w->tid, w->futex, ret);
			if (done)
				break;

			goto again;
		}

		FUNC6(1);
		ret = FUNC1(w->futex, futex_flag);
		if (ret && !silent)
			FUNC7("thread %d: Could not unlock pi-lock for %p (%d)",
			     w->tid, w->futex, ret);
		ops++; /* account for thread's share of work */
	}  while (!done);

	w->ops = ops;
	return NULL;
}