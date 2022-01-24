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
struct svc_rqst {struct nfsd_linkargs* rq_argp; } ;
struct nfsd_linkargs {int /*<<< orphan*/  tlen; int /*<<< orphan*/  tname; int /*<<< orphan*/  tfh; int /*<<< orphan*/  ffh; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct svc_rqst*,int /*<<< orphan*/ *) ; 

int
FUNC3(struct svc_rqst *rqstp, __be32 *p)
{
	struct nfsd_linkargs *args = rqstp->rq_argp;

	if (!(p = FUNC0(p, &args->ffh))
	 || !(p = FUNC0(p, &args->tfh))
	 || !(p = FUNC1(p, &args->tname, &args->tlen)))
		return 0;

	return FUNC2(rqstp, p);
}