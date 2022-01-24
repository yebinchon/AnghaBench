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
struct svc_serv {int /*<<< orphan*/  sv_max_mesg; int /*<<< orphan*/  sv_xdrsize; } ;
struct svc_rqst {void* rq_resp; void* rq_argp; struct svc_pool* rq_pool; struct svc_serv* rq_server; int /*<<< orphan*/  rq_lock; int /*<<< orphan*/  rq_flags; } ;
struct svc_pool {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RQ_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct svc_rqst* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_rqst*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct svc_rqst*) ; 

struct svc_rqst *
FUNC6(struct svc_serv *serv, struct svc_pool *pool, int node)
{
	struct svc_rqst	*rqstp;

	rqstp = FUNC2(sizeof(*rqstp), GFP_KERNEL, node);
	if (!rqstp)
		return rqstp;

	FUNC0(RQ_BUSY, &rqstp->rq_flags);
	FUNC3(&rqstp->rq_lock);
	rqstp->rq_server = serv;
	rqstp->rq_pool = pool;

	rqstp->rq_argp = FUNC1(serv->sv_xdrsize, GFP_KERNEL, node);
	if (!rqstp->rq_argp)
		goto out_enomem;

	rqstp->rq_resp = FUNC1(serv->sv_xdrsize, GFP_KERNEL, node);
	if (!rqstp->rq_resp)
		goto out_enomem;

	if (!FUNC4(rqstp, serv->sv_max_mesg, node))
		goto out_enomem;

	return rqstp;
out_enomem:
	FUNC5(rqstp);
	return NULL;
}