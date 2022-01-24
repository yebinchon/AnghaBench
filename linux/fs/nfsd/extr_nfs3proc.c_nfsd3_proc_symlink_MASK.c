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
struct svc_rqst {TYPE_1__ rq_arg; struct nfsd3_diropres* rq_resp; struct nfsd3_symlinkargs* rq_argp; } ;
struct nfsd3_symlinkargs {scalar_t__ tlen; int /*<<< orphan*/  tname; int /*<<< orphan*/  flen; int /*<<< orphan*/  fname; int /*<<< orphan*/  ffh; int /*<<< orphan*/  first; } ;
struct nfsd3_diropres {int /*<<< orphan*/  fh; int /*<<< orphan*/  dirfh; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFS3_FHSIZE ; 
 scalar_t__ NFS3_MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfserr_inval ; 
 int /*<<< orphan*/  nfserr_nametoolong ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct svc_rqst*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static __be32
FUNC12(struct svc_rqst *rqstp)
{
	struct nfsd3_symlinkargs *argp = rqstp->rq_argp;
	struct nfsd3_diropres *resp = rqstp->rq_resp;
	__be32	nfserr;

	if (argp->tlen == 0)
		FUNC2(nfserr_inval);
	if (argp->tlen > NFS3_MAXPATHLEN)
		FUNC2(nfserr_nametoolong);

	argp->tname = FUNC11(rqstp, &argp->first,
						FUNC10(rqstp->rq_arg.pages[0]),
						argp->tlen);
	if (FUNC0(argp->tname))
		FUNC2(FUNC9(FUNC1(argp->tname)));

	FUNC4("nfsd: SYMLINK(3)  %s %.*s -> %.*s\n",
				FUNC3(&argp->ffh),
				argp->flen, argp->fname,
				argp->tlen, argp->tname);

	FUNC5(&resp->dirfh, &argp->ffh);
	FUNC6(&resp->fh, NFS3_FHSIZE);
	nfserr = FUNC8(rqstp, &resp->dirfh, argp->fname, argp->flen,
						   argp->tname, &resp->fh);
	FUNC7(argp->tname);
	FUNC2(nfserr);
}