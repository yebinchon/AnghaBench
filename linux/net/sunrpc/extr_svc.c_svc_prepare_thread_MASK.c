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
struct svc_serv {int /*<<< orphan*/  sv_nrthreads; } ;
struct svc_rqst {int /*<<< orphan*/  rq_all; } ;
struct svc_pool {int /*<<< orphan*/  sp_lock; int /*<<< orphan*/  sp_all_threads; int /*<<< orphan*/  sp_nrthreads; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct svc_rqst* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct svc_rqst* FUNC4 (struct svc_serv*,struct svc_pool*,int) ; 

struct svc_rqst *
FUNC5(struct svc_serv *serv, struct svc_pool *pool, int node)
{
	struct svc_rqst	*rqstp;

	rqstp = FUNC4(serv, pool, node);
	if (!rqstp)
		return FUNC0(-ENOMEM);

	serv->sv_nrthreads++;
	FUNC2(&pool->sp_lock);
	pool->sp_nrthreads++;
	FUNC1(&rqstp->rq_all, &pool->sp_all_threads);
	FUNC3(&pool->sp_lock);
	return rqstp;
}