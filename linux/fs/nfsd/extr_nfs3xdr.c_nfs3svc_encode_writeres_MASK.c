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
struct svc_rqst {struct nfsd3_writeres* rq_resp; } ;
struct nfsd_net {int dummy; } ;
struct nfsd3_writeres {scalar_t__ status; int /*<<< orphan*/  committed; int /*<<< orphan*/  count; int /*<<< orphan*/  fh; } ;
typedef  void* __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct svc_rqst*) ; 
 void** FUNC1 (struct svc_rqst*,void**,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 struct nfsd_net* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void**,struct nfsd_net*) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int FUNC5 (struct svc_rqst*,void**) ; 

int
FUNC6(struct svc_rqst *rqstp, __be32 *p)
{
	struct nfsd3_writeres *resp = rqstp->rq_resp;
	struct nfsd_net *nn = FUNC3(FUNC0(rqstp), nfsd_net_id);
	__be32 verf[2];

	p = FUNC1(rqstp, p, &resp->fh);
	if (resp->status == 0) {
		*p++ = FUNC2(resp->count);
		*p++ = FUNC2(resp->committed);
		/* unique identifier, y2038 overflow can be ignored */
		FUNC4(verf, nn);
		*p++ = verf[0];
		*p++ = verf[1];
	}
	return FUNC5(rqstp, p);
}