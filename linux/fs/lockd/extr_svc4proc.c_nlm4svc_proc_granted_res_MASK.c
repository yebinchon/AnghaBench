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
struct svc_rqst {struct nlm_res* rq_argp; } ;
struct nlm_res {int /*<<< orphan*/  status; int /*<<< orphan*/  cookie; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nlmsvc_ops ; 
 int /*<<< orphan*/  rpc_success ; 

__attribute__((used)) static __be32
FUNC2(struct svc_rqst *rqstp)
{
	struct nlm_res *argp = rqstp->rq_argp;

        if (!nlmsvc_ops)
                return rpc_success;

        FUNC0("lockd: GRANTED_RES   called\n");

        FUNC1(&argp->cookie, argp->status);
        return rpc_success;
}