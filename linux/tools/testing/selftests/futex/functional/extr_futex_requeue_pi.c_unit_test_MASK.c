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
typedef  long time_t ;
struct timespec {long tv_nsec; long tv_sec; } ;
struct thread_arg {int id; long lock; int ret; struct timespec* timeout; } ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int RET_ERROR ; 
 int RET_PASS ; 
 int /*<<< orphan*/  SCHED_FIFO ; 
 struct thread_arg THREAD_ARG_INITIALIZER ; 
 int THREAD_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct timespec*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,void* (*) (void*),void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void**) ; 
 void* FUNC7 (void*) ; 
 void* FUNC8 (void*) ; 
 void* FUNC9 (void*) ; 
 int /*<<< orphan*/  waiters_woken ; 

int FUNC10(int broadcast, long lock, int third_party_owner, long timeout_ns)
{
	void *(*wakerfn)(void *) = signal_wakerfn;
	struct thread_arg blocker_arg = THREAD_ARG_INITIALIZER;
	struct thread_arg waker_arg = THREAD_ARG_INITIALIZER;
	pthread_t waiter[THREAD_MAX], waker, blocker;
	struct timespec ts, *tsp = NULL;
	struct thread_arg args[THREAD_MAX];
	int *waiter_ret;
	int i, ret = RET_PASS;

	if (timeout_ns) {
		time_t secs;

		FUNC5("timeout_ns = %ld\n", timeout_ns);
		ret = FUNC2(CLOCK_MONOTONIC, &ts);
		secs = (ts.tv_nsec + timeout_ns) / 1000000000;
		ts.tv_nsec = ((int64_t)ts.tv_nsec + timeout_ns) % 1000000000;
		ts.tv_sec += secs;
		FUNC5("ts.tv_sec  = %ld\n", ts.tv_sec);
		FUNC5("ts.tv_nsec = %ld\n", ts.tv_nsec);
		tsp = &ts;
	}

	if (broadcast)
		wakerfn = broadcast_wakerfn;

	if (third_party_owner) {
		if (FUNC3(&blocker, third_party_blocker,
				     (void *)&blocker_arg, SCHED_FIFO, 1)) {
			FUNC4("Creating third party blocker thread failed\n",
			      errno);
			ret = RET_ERROR;
			goto out;
		}
	}

	FUNC0(&waiters_woken, 0);
	for (i = 0; i < THREAD_MAX; i++) {
		args[i].id = i;
		args[i].timeout = tsp;
		FUNC5("Starting thread %d\n", i);
		if (FUNC3(&waiter[i], waiterfn, (void *)&args[i],
				     SCHED_FIFO, 1)) {
			FUNC4("Creating waiting thread failed\n", errno);
			ret = RET_ERROR;
			goto out;
		}
	}
	waker_arg.lock = lock;
	if (FUNC3(&waker, wakerfn, (void *)&waker_arg,
			     SCHED_FIFO, 1)) {
		FUNC4("Creating waker thread failed\n", errno);
		ret = RET_ERROR;
		goto out;
	}

	/* Wait for threads to finish */
	/* Store the first error or failure encountered in waiter_ret */
	waiter_ret = &args[0].ret;
	for (i = 0; i < THREAD_MAX; i++)
		FUNC6(waiter[i],
			     *waiter_ret ? NULL : (void **)&waiter_ret);

	if (third_party_owner)
		FUNC6(blocker, NULL);
	FUNC6(waker, NULL);

out:
	if (!ret) {
		if (*waiter_ret)
			ret = *waiter_ret;
		else if (waker_arg.ret < 0)
			ret = waker_arg.ret;
		else if (blocker_arg.ret)
			ret = blocker_arg.ret;
	}

	return ret;
}