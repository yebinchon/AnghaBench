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
struct svc_rqst {struct nfsd_renameargs* rq_argp; } ;
struct nfsd_renameargs {int /*<<< orphan*/  tfh; int /*<<< orphan*/  ffh; int /*<<< orphan*/  tlen; int /*<<< orphan*/  tname; int /*<<< orphan*/  flen; int /*<<< orphan*/  fname; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32
FUNC4(struct svc_rqst *rqstp)
{
	struct nfsd_renameargs *argp = rqstp->rq_argp;
	__be32	nfserr;

	FUNC1("nfsd: RENAME   %s %.*s -> \n",
		FUNC0(&argp->ffh), argp->flen, argp->fname);
	FUNC1("nfsd:        ->  %s %.*s\n",
		FUNC0(&argp->tfh), argp->tlen, argp->tname);

	nfserr = FUNC3(rqstp, &argp->ffh, argp->fname, argp->flen,
				    &argp->tfh, argp->tname, argp->tlen);
	FUNC2(&argp->ffh);
	FUNC2(&argp->tfh);
	return nfserr;
}