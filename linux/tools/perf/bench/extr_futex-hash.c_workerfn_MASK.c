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
struct worker {unsigned long ops; int /*<<< orphan*/ * futex; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  done ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  futex_flag ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int nfutexes ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  silent ; 
 int /*<<< orphan*/  thread_lock ; 
 int /*<<< orphan*/  thread_parent ; 
 int /*<<< orphan*/  thread_worker ; 
 int /*<<< orphan*/  threads_starting ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void *FUNC6(void *arg)
{
	int ret;
	struct worker *w = (struct worker *) arg;
	unsigned int i;
	unsigned long ops = w->ops; /* avoid cacheline bouncing */

	FUNC3(&thread_lock);
	threads_starting--;
	if (!threads_starting)
		FUNC1(&thread_parent);
	FUNC2(&thread_worker, &thread_lock);
	FUNC4(&thread_lock);

	do {
		for (i = 0; i < nfutexes; i++, ops++) {
			/*
			 * We want the futex calls to fail in order to stress
			 * the hashing of uaddr and not measure other steps,
			 * such as internal waitqueue handling, thus enlarging
			 * the critical region protected by hb->lock.
			 */
			ret = FUNC0(&w->futex[i], 1234, NULL, futex_flag);
			if (!silent &&
			    (!ret || errno != EAGAIN || errno != EWOULDBLOCK))
				FUNC5("Non-expected futex return call");
		}
	}  while (!done);

	w->ops = ops;
	return NULL;
}