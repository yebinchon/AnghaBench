#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int oflags; } ;
typedef  TYPE_2__ xfs_fsop_handlereq_t ;
struct path {struct file* dentry; int /*<<< orphan*/  mnt; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct TYPE_5__ {int /*<<< orphan*/  mnt; } ;
struct file {int /*<<< orphan*/  f_mode; int /*<<< orphan*/  f_flags; TYPE_1__ f_path; } ;
struct dentry {int /*<<< orphan*/  f_mode; int /*<<< orphan*/  f_flags; TYPE_1__ f_path; } ;
struct cred {int dummy; } ;
typedef  int fmode_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EISDIR ; 
 int EPERM ; 
 int /*<<< orphan*/  FMODE_NOCMTIME ; 
 int FMODE_WRITE ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct file*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int FUNC3 (int) ; 
 int O_APPEND ; 
 int O_LARGEFILE ; 
 int /*<<< orphan*/  O_NOATIME ; 
 int O_TRUNC ; 
 int FUNC4 (struct file*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct cred* FUNC8 () ; 
 struct inode* FUNC9 (struct file*) ; 
 struct file* FUNC10 (struct path*,int,struct cred const*) ; 
 int /*<<< orphan*/  FUNC11 (struct file*) ; 
 int /*<<< orphan*/  FUNC12 (int,struct file*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 struct file* FUNC15 (struct file*,TYPE_2__*) ; 

int
FUNC16(
	struct file		*parfilp,
	xfs_fsop_handlereq_t	*hreq)
{
	const struct cred	*cred = FUNC8();
	int			error;
	int			fd;
	int			permflag;
	struct file		*filp;
	struct inode		*inode;
	struct dentry		*dentry;
	fmode_t			fmode;
	struct path		path;

	if (!FUNC7(CAP_SYS_ADMIN))
		return -EPERM;

	dentry = FUNC15(parfilp, hreq);
	if (FUNC1(dentry))
		return FUNC4(dentry);
	inode = FUNC9(dentry);

	/* Restrict xfs_open_by_handle to directories & regular files. */
	if (!(FUNC6(inode->i_mode) || FUNC5(inode->i_mode))) {
		error = -EPERM;
		goto out_dput;
	}

#if BITS_PER_LONG != 32
	hreq->oflags |= O_LARGEFILE;
#endif

	permflag = hreq->oflags;
	fmode = FUNC3(permflag);
	if ((!(permflag & O_APPEND) || (permflag & O_TRUNC)) &&
	    (fmode & FMODE_WRITE) && FUNC0(inode)) {
		error = -EPERM;
		goto out_dput;
	}

	if ((fmode & FMODE_WRITE) && FUNC2(inode)) {
		error = -EPERM;
		goto out_dput;
	}

	/* Can't write directories. */
	if (FUNC5(inode->i_mode) && (fmode & FMODE_WRITE)) {
		error = -EISDIR;
		goto out_dput;
	}

	fd = FUNC13(0);
	if (fd < 0) {
		error = fd;
		goto out_dput;
	}

	path.mnt = parfilp->f_path.mnt;
	path.dentry = dentry;
	filp = FUNC10(&path, hreq->oflags, cred);
	FUNC11(dentry);
	if (FUNC1(filp)) {
		FUNC14(fd);
		return FUNC4(filp);
	}

	if (FUNC6(inode->i_mode)) {
		filp->f_flags |= O_NOATIME;
		filp->f_mode |= FMODE_NOCMTIME;
	}

	FUNC12(fd, filp);
	return fd;

 out_dput:
	FUNC11(dentry);
	return error;
}