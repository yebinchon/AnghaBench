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
struct svc_serv {int dummy; } ;
struct svc_rqst {int /*<<< orphan*/  rq_all; int /*<<< orphan*/  rq_flags; struct svc_pool* rq_pool; struct svc_serv* rq_server; } ;
struct svc_pool {int /*<<< orphan*/  sp_lock; int /*<<< orphan*/  sp_nrthreads; } ;

/* Variables and functions */
 int /*<<< orphan*/  RQ_VICTIM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct svc_serv*) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC6(struct svc_rqst *rqstp)
{
	struct svc_serv	*serv = rqstp->rq_server;
	struct svc_pool	*pool = rqstp->rq_pool;

	FUNC1(&pool->sp_lock);
	pool->sp_nrthreads--;
	if (!FUNC5(RQ_VICTIM, &rqstp->rq_flags))
		FUNC0(&rqstp->rq_all);
	FUNC2(&pool->sp_lock);

	FUNC4(rqstp);

	/* Release the server */
	if (serv)
		FUNC3(serv);
}