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
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct svc_xprt {int /*<<< orphan*/  xpt_reserved; TYPE_3__* xpt_ops; int /*<<< orphan*/  xpt_ref; TYPE_1__* xpt_class; int /*<<< orphan*/  xpt_cred; int /*<<< orphan*/  xpt_server; int /*<<< orphan*/  xpt_flags; } ;
struct svc_serv {int /*<<< orphan*/  sv_max_mesg; } ;
struct svc_rqst {int /*<<< orphan*/  rq_reserved; int /*<<< orphan*/  rq_stime; int /*<<< orphan*/  rq_deferred; TYPE_2__* rq_pool; struct svc_serv* rq_server; } ;
struct TYPE_6__ {int (* xpo_recvfrom ) (struct svc_rqst*) ;struct svc_xprt* (* xpo_accept ) (struct svc_xprt*) ;int /*<<< orphan*/  (* xpo_kill_temp_xprt ) (struct svc_xprt*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  sp_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  xcl_owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  XPT_CLOSE ; 
 int /*<<< orphan*/  XPT_KILL_TEMP ; 
 int /*<<< orphan*/  XPT_LISTENER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct svc_xprt*) ; 
 struct svc_xprt* FUNC8 (struct svc_xprt*) ; 
 int FUNC9 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC10 (struct svc_serv*,struct svc_xprt*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct svc_xprt*) ; 
 int FUNC13 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC14 (struct svc_xprt*) ; 
 int /*<<< orphan*/  FUNC15 (struct svc_xprt*) ; 
 scalar_t__ FUNC16 (struct svc_rqst*,struct svc_xprt*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct svc_xprt*,int) ; 

__attribute__((used)) static int FUNC20(struct svc_rqst *rqstp, struct svc_xprt *xprt)
{
	struct svc_serv *serv = rqstp->rq_server;
	int len = 0;

	if (FUNC18(XPT_CLOSE, &xprt->xpt_flags)) {
		FUNC2("svc_recv: found XPT_CLOSE\n");
		if (FUNC17(XPT_KILL_TEMP, &xprt->xpt_flags))
			xprt->xpt_ops->xpo_kill_temp_xprt(xprt);
		FUNC14(xprt);
		/* Leave XPT_BUSY set on the dead xprt: */
		goto out;
	}
	if (FUNC18(XPT_LISTENER, &xprt->xpt_flags)) {
		struct svc_xprt *newxpt;
		/*
		 * We know this module_get will succeed because the
		 * listener holds a reference too
		 */
		FUNC0(xprt->xpt_class->xcl_owner);
		FUNC11(xprt->xpt_server);
		newxpt = xprt->xpt_ops->xpo_accept(xprt);
		if (newxpt) {
			newxpt->xpt_cred = FUNC3(xprt->xpt_cred);
			FUNC10(serv, newxpt);
		} else
			FUNC6(xprt->xpt_class->xcl_owner);
	} else if (FUNC16(rqstp, xprt)) {
		/* XPT_DATA|XPT_DEFERRED case: */
		FUNC2("svc: server %p, pool %u, transport %p, inuse=%d\n",
			rqstp, rqstp->rq_pool->sp_id, xprt,
			FUNC4(&xprt->xpt_ref));
		rqstp->rq_deferred = FUNC12(xprt);
		if (rqstp->rq_deferred)
			len = FUNC13(rqstp);
		else
			len = xprt->xpt_ops->xpo_recvfrom(rqstp);
		rqstp->rq_stime = FUNC5();
		rqstp->rq_reserved = serv->sv_max_mesg;
		FUNC1(rqstp->rq_reserved, &xprt->xpt_reserved);
	}
	/* clear XPT_BUSY: */
	FUNC15(xprt);
out:
	FUNC19(xprt, len);
	return len;
}