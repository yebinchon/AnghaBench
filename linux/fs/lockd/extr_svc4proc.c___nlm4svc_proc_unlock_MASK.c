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
struct svc_rqst {struct nlm_args* rq_argp; } ;
struct nlm_res {int /*<<< orphan*/  status; int /*<<< orphan*/  cookie; } ;
struct nlm_host {int dummy; } ;
struct nlm_file {int dummy; } ;
struct nlm_args {int /*<<< orphan*/  lock; int /*<<< orphan*/  cookie; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct svc_rqst*,struct nlm_args*,struct nlm_host**,struct nlm_file**) ; 
 int /*<<< orphan*/  nlm_drop_reply ; 
 int /*<<< orphan*/  nlm_lck_denied_grace_period ; 
 int /*<<< orphan*/  FUNC4 (struct nlm_file*) ; 
 int /*<<< orphan*/  FUNC5 (struct nlm_host*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct nlm_file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpc_drop_reply ; 
 int /*<<< orphan*/  rpc_success ; 

__attribute__((used)) static __be32
FUNC9(struct svc_rqst *rqstp, struct nlm_res *resp)
{
	struct nlm_args *argp = rqstp->rq_argp;
	struct nlm_host	*host;
	struct nlm_file	*file;

	FUNC1("lockd: UNLOCK        called\n");

	resp->cookie = argp->cookie;

	/* Don't accept new lock requests during grace period */
	if (FUNC2(FUNC0(rqstp))) {
		resp->status = nlm_lck_denied_grace_period;
		return rpc_success;
	}

	/* Obtain client and file */
	if ((resp->status = FUNC3(rqstp, argp, &host, &file)))
		return resp->status == nlm_drop_reply ? rpc_drop_reply :rpc_success;

	/* Now try to remove the lock */
	resp->status = FUNC7(FUNC0(rqstp), file, &argp->lock);

	FUNC1("lockd: UNLOCK        status %d\n", FUNC8(resp->status));
	FUNC6(&argp->lock);
	FUNC5(host);
	FUNC4(file);
	return rpc_success;
}