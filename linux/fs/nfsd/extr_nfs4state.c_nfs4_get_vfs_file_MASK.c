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
struct svc_rqst {int dummy; } ;
struct svc_fh {int dummy; } ;
struct nfsd_file {int dummy; } ;
struct nfsd4_open {int op_share_deny; int /*<<< orphan*/  op_share_access; } ;
struct nfs4_ol_stateid {unsigned char st_access_bmap; unsigned char st_deny_bmap; } ;
struct nfs4_file {int fi_share_deny; int /*<<< orphan*/  fi_lock; struct nfsd_file** fi_fds; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int NFS4_SHARE_DENY_BOTH ; 
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct nfs4_file*,int) ; 
 scalar_t__ FUNC4 (struct nfs4_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs4_file*,int /*<<< orphan*/ ) ; 
 scalar_t__ nfs_ok ; 
 scalar_t__ FUNC6 (struct svc_rqst*,struct svc_fh*,struct nfsd4_open*) ; 
 scalar_t__ FUNC7 (struct svc_rqst*,struct svc_fh*,int,struct nfsd_file**) ; 
 int /*<<< orphan*/  FUNC8 (struct nfsd_file*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct nfs4_ol_stateid*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct nfs4_ol_stateid*) ; 
 int /*<<< orphan*/  FUNC11 (int,struct nfs4_ol_stateid*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __be32 FUNC14(struct svc_rqst *rqstp, struct nfs4_file *fp,
		struct svc_fh *cur_fh, struct nfs4_ol_stateid *stp,
		struct nfsd4_open *open)
{
	struct nfsd_file *nf = NULL;
	__be32 status;
	int oflag = FUNC2(open->op_share_access);
	int access = FUNC1(open->op_share_access);
	unsigned char old_access_bmap, old_deny_bmap;

	FUNC12(&fp->fi_lock);

	/*
	 * Are we trying to set a deny mode that would conflict with
	 * current access?
	 */
	status = FUNC3(fp, open->op_share_deny);
	if (status != nfs_ok) {
		FUNC13(&fp->fi_lock);
		goto out;
	}

	/* set access to the file */
	status = FUNC4(fp, open->op_share_access);
	if (status != nfs_ok) {
		FUNC13(&fp->fi_lock);
		goto out;
	}

	/* Set access bits in stateid */
	old_access_bmap = stp->st_access_bmap;
	FUNC10(open->op_share_access, stp);

	/* Set new deny mask */
	old_deny_bmap = stp->st_deny_bmap;
	FUNC11(open->op_share_deny, stp);
	fp->fi_share_deny |= (open->op_share_deny & NFS4_SHARE_DENY_BOTH);

	if (!fp->fi_fds[oflag]) {
		FUNC13(&fp->fi_lock);
		status = FUNC7(rqstp, cur_fh, access, &nf);
		if (status)
			goto out_put_access;
		FUNC12(&fp->fi_lock);
		if (!fp->fi_fds[oflag]) {
			fp->fi_fds[oflag] = nf;
			nf = NULL;
		}
	}
	FUNC13(&fp->fi_lock);
	if (nf)
		FUNC8(nf);

	status = FUNC6(rqstp, cur_fh, open);
	if (status)
		goto out_put_access;
out:
	return status;
out_put_access:
	stp->st_access_bmap = old_access_bmap;
	FUNC5(fp, open->op_share_access);
	FUNC9(FUNC0(old_deny_bmap), stp);
	goto out;
}