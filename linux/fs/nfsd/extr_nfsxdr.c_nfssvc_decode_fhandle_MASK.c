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
struct svc_rqst {struct nfsd_fhandle* rq_argp; } ;
struct nfsd_fhandle {int /*<<< orphan*/  fh; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct svc_rqst*,int /*<<< orphan*/ *) ; 

int
FUNC2(struct svc_rqst *rqstp, __be32 *p)
{
	struct nfsd_fhandle *args = rqstp->rq_argp;

	p = FUNC0(p, &args->fh);
	if (!p)
		return 0;
	return FUNC1(rqstp, p);
}