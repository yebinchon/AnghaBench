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
typedef  int /*<<< orphan*/  umode_t ;
struct svc_rqst {int dummy; } ;
struct svc_fh {int /*<<< orphan*/  fh_dentry; TYPE_2__* fh_export; } ;
struct path {int /*<<< orphan*/  dentry; int /*<<< orphan*/  mnt; } ;
struct inode {int /*<<< orphan*/  i_fop; int /*<<< orphan*/  i_mode; } ;
struct file {int /*<<< orphan*/  f_mode; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_3__ {int /*<<< orphan*/  mnt; } ;
struct TYPE_4__ {TYPE_1__ ex_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FMODE_32BITHASH ; 
 int /*<<< orphan*/  FMODE_64BITHASH ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct file*) ; 
 int NFSD_MAY_64BIT_COOKIE ; 
 int NFSD_MAY_READ ; 
 int NFSD_MAY_WRITE ; 
 int O_LARGEFILE ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int O_WRONLY ; 
 int FUNC2 (struct file*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ) ; 
 struct file* FUNC6 (struct path*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct file*) ; 
 int FUNC8 (struct file*,int) ; 
 scalar_t__ FUNC9 (struct inode*) ; 
 int FUNC10 (struct inode*,int) ; 
 int /*<<< orphan*/  nfserr_perm ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static __be32
FUNC12(struct svc_rqst *rqstp, struct svc_fh *fhp, umode_t type,
			int may_flags, struct file **filp)
{
	struct path	path;
	struct inode	*inode;
	struct file	*file;
	int		flags = O_RDONLY|O_LARGEFILE;
	__be32		err;
	int		host_err = 0;

	path.mnt = fhp->fh_export->ex_path.mnt;
	path.dentry = fhp->fh_dentry;
	inode = FUNC5(path.dentry);

	/* Disallow write access to files with the append-only bit set
	 * or any access when mandatory locking enabled
	 */
	err = nfserr_perm;
	if (FUNC0(inode) && (may_flags & NFSD_MAY_WRITE))
		goto out;
	/*
	 * We must ignore files (but only files) which might have mandatory
	 * locks on them because there is no way to know if the accesser has
	 * the lock.
	 */
	if (FUNC3((inode)->i_mode) && FUNC9(inode))
		goto out;

	if (!inode->i_fop)
		goto out;

	host_err = FUNC10(inode, may_flags);
	if (host_err) /* NOMEM or WOULDBLOCK */
		goto out_nfserr;

	if (may_flags & NFSD_MAY_WRITE) {
		if (may_flags & NFSD_MAY_READ)
			flags = O_RDWR|O_LARGEFILE;
		else
			flags = O_WRONLY|O_LARGEFILE;
	}

	file = FUNC6(&path, flags, FUNC4());
	if (FUNC1(file)) {
		host_err = FUNC2(file);
		goto out_nfserr;
	}

	host_err = FUNC8(file, may_flags);
	if (host_err) {
		FUNC7(file);
		goto out_nfserr;
	}

	if (may_flags & NFSD_MAY_64BIT_COOKIE)
		file->f_mode |= FMODE_64BITHASH;
	else
		file->f_mode |= FMODE_32BITHASH;

	*filp = file;
out_nfserr:
	err = FUNC11(host_err);
out:
	return err;
}