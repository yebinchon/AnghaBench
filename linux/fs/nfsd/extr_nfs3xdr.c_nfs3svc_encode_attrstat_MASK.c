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
struct svc_rqst {struct nfsd3_attrstat* rq_resp; } ;
struct TYPE_4__ {int /*<<< orphan*/  mtime; } ;
struct TYPE_3__ {int /*<<< orphan*/  fh_dentry; } ;
struct nfsd3_attrstat {scalar_t__ status; TYPE_2__ stat; TYPE_1__ fh; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct svc_rqst*,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct svc_rqst*,int /*<<< orphan*/ *) ; 

int
FUNC4(struct svc_rqst *rqstp, __be32 *p)
{
	struct nfsd3_attrstat *resp = rqstp->rq_resp;

	if (resp->status == 0) {
		FUNC2(FUNC0(resp->fh.fh_dentry),
				&resp->stat.mtime);
		p = FUNC1(rqstp, p, &resp->fh, &resp->stat);
	}
	return FUNC3(rqstp, p);
}