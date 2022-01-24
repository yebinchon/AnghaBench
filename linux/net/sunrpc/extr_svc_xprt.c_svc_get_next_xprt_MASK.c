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
struct svc_xprt {int dummy; } ;
struct TYPE_4__ {int thread_wait; } ;
struct svc_rqst {struct svc_xprt* rq_xprt; TYPE_2__ rq_chandle; int /*<<< orphan*/  rq_flags; struct svc_pool* rq_pool; } ;
struct TYPE_3__ {int /*<<< orphan*/  threads_timedout; } ;
struct svc_pool {int /*<<< orphan*/  sp_flags; TYPE_1__ sp_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EINTR ; 
 struct svc_xprt* FUNC0 (int /*<<< orphan*/ ) ; 
 int HZ ; 
 int /*<<< orphan*/  RQ_BUSY ; 
 int /*<<< orphan*/  SP_CONGESTED ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (struct svc_xprt*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct svc_rqst*) ; 
 long FUNC8 (long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 void* FUNC14 (struct svc_pool*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC17 () ; 

__attribute__((used)) static struct svc_xprt *FUNC18(struct svc_rqst *rqstp, long timeout)
{
	struct svc_pool		*pool = rqstp->rq_pool;
	long			time_left = 0;

	/* rq_xprt should be clear on entry */
	FUNC1(rqstp->rq_xprt);

	rqstp->rq_xprt = FUNC14(pool);
	if (rqstp->rq_xprt)
		goto out_found;

	/*
	 * We have to be able to interrupt this wait
	 * to bring down the daemons ...
	 */
	FUNC10(TASK_INTERRUPTIBLE);
	FUNC13();
	FUNC4(SP_CONGESTED, &pool->sp_flags);
	FUNC4(RQ_BUSY, &rqstp->rq_flags);
	FUNC12();

	if (FUNC6(FUNC7(rqstp)))
		time_left = FUNC8(timeout);
	else
		FUNC2(TASK_RUNNING);

	FUNC17();

	FUNC9(RQ_BUSY, &rqstp->rq_flags);
	FUNC12();
	rqstp->rq_xprt = FUNC14(pool);
	if (rqstp->rq_xprt)
		goto out_found;

	if (!time_left)
		FUNC3(&pool->sp_stats.threads_timedout);

	if (FUNC11() || FUNC5())
		return FUNC0(-EINTR);
	return FUNC0(-EAGAIN);
out_found:
	/* Normally we will wait up to 5 seconds for any required
	 * cache information to be provided.
	 */
	if (!FUNC15(SP_CONGESTED, &pool->sp_flags))
		rqstp->rq_chandle.thread_wait = 5*HZ;
	else
		rqstp->rq_chandle.thread_wait = 1*HZ;
	FUNC16(rqstp);
	return rqstp->rq_xprt;
}