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
struct svc_rqst {struct nfsd3_pathconfres* rq_resp; } ;
struct nfsd3_pathconfres {scalar_t__ status; int /*<<< orphan*/  p_case_preserving; int /*<<< orphan*/  p_case_insensitive; int /*<<< orphan*/  p_chown_restricted; int /*<<< orphan*/  p_no_trunc; int /*<<< orphan*/  p_name_max; int /*<<< orphan*/  p_link_max; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct svc_rqst*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xdr_zero ; 

int
FUNC2(struct svc_rqst *rqstp, __be32 *p)
{
	struct nfsd3_pathconfres *resp = rqstp->rq_resp;

	*p++ = xdr_zero;	/* no post_op_attr */

	if (resp->status == 0) {
		*p++ = FUNC0(resp->p_link_max);
		*p++ = FUNC0(resp->p_name_max);
		*p++ = FUNC0(resp->p_no_trunc);
		*p++ = FUNC0(resp->p_chown_restricted);
		*p++ = FUNC0(resp->p_case_insensitive);
		*p++ = FUNC0(resp->p_case_preserving);
	}

	return FUNC1(rqstp, p);
}