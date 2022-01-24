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
struct svc_rqst {struct svc_pool* rq_pool; } ;
struct svc_pool {int /*<<< orphan*/  sp_sockets; int /*<<< orphan*/  sp_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  SP_TASK_PENDING ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC5(struct svc_rqst *rqstp)
{
	struct svc_pool		*pool = rqstp->rq_pool;

	/* did someone call svc_wake_up? */
	if (FUNC4(SP_TASK_PENDING, &pool->sp_flags))
		return false;

	/* was a socket queued? */
	if (!FUNC2(&pool->sp_sockets))
		return false;

	/* are we shutting down? */
	if (FUNC3() || FUNC1())
		return false;

	/* are we freezing? */
	if (FUNC0(current))
		return false;

	return true;
}