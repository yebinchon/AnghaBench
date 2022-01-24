#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * pages; } ;
struct svc_rqst {TYPE_1__ rq_arg; struct nfsd_symlinkargs* rq_argp; } ;
struct svc_fh {int dummy; } ;
struct nfsd_symlinkargs {scalar_t__ tlen; struct svc_fh ffh; int /*<<< orphan*/  tname; int /*<<< orphan*/  flen; int /*<<< orphan*/  fname; int /*<<< orphan*/  first; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFS_FHSIZE ; 
 scalar_t__ NFS_MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct svc_fh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct svc_rqst*,struct svc_fh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct svc_fh*) ; 
 int /*<<< orphan*/  nfserr_nametoolong ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static __be32
FUNC11(struct svc_rqst *rqstp)
{
	struct nfsd_symlinkargs *argp = rqstp->rq_argp;
	struct svc_fh	newfh;
	__be32		nfserr;

	if (argp->tlen > NFS_MAXPATHLEN)
		return nfserr_nametoolong;

	argp->tname = FUNC10(rqstp, &argp->first,
						FUNC9(rqstp->rq_arg.pages[0]),
						argp->tlen);
	if (FUNC0(argp->tname))
		return FUNC8(FUNC1(argp->tname));

	FUNC3("nfsd: SYMLINK  %s %.*s -> %.*s\n",
		FUNC2(&argp->ffh), argp->flen, argp->fname,
		argp->tlen, argp->tname);

	FUNC4(&newfh, NFS_FHSIZE);
	nfserr = FUNC7(rqstp, &argp->ffh, argp->fname, argp->flen,
						 argp->tname, &newfh);

	FUNC6(argp->tname);
	FUNC5(&argp->ffh);
	FUNC5(&newfh);
	return nfserr;
}