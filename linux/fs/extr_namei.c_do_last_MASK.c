#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct path {struct dentry* dentry; } ;
struct open_flags {int open_flag; int acc_mode; int intent; } ;
struct TYPE_8__ {int /*<<< orphan*/  mnt; struct dentry* dentry; } ;
struct TYPE_6__ {int* name; size_t len; } ;
struct nameidata {int flags; scalar_t__ last_type; scalar_t__ inode; TYPE_3__ path; int /*<<< orphan*/  name; TYPE_1__ last; } ;
struct inode {int dummy; } ;
struct TYPE_7__ {struct dentry* dentry; } ;
struct file {int f_mode; TYPE_2__ f_path; } ;
struct dentry {scalar_t__ d_inode; } ;
struct TYPE_9__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_INODE_PARENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EEXIST ; 
 int EINVAL ; 
 int EISDIR ; 
 int ENOENT ; 
 int ENOTDIR ; 
 int FMODE_CREATED ; 
 int FMODE_OPENED ; 
 scalar_t__ LAST_NORM ; 
 int LOOKUP_DIRECTORY ; 
 int LOOKUP_FOLLOW ; 
 int LOOKUP_PARENT ; 
 int LOOKUP_RCU ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nameidata*) ; 
 struct inode* FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 scalar_t__ FUNC7 (struct dentry*) ; 
 int FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*) ; 
 TYPE_5__* FUNC10 (struct file*) ; 
 int FUNC11 (struct path*,struct nameidata*) ; 
 int FUNC12 (struct nameidata*,scalar_t__) ; 
 int FUNC13 (struct file*) ; 
 int FUNC14 (struct file*,int) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 scalar_t__ FUNC19 (int) ; 
 int FUNC20 (struct nameidata*,struct path*,struct inode**,unsigned int*) ; 
 int FUNC21 (struct nameidata*,struct path*,struct file*,struct open_flags const*,int) ; 
 int FUNC22 (struct dentry*,struct inode*) ; 
 int FUNC23 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct path*,struct nameidata*) ; 
 int FUNC27 (struct nameidata*,struct path*,int /*<<< orphan*/ ,struct inode*,unsigned int) ; 
 scalar_t__ FUNC28 (int) ; 
 int FUNC29 (TYPE_3__*,struct file*) ; 

__attribute__((used)) static int FUNC30(struct nameidata *nd,
		   struct file *file, const struct open_flags *op)
{
	struct dentry *dir = nd->path.dentry;
	int open_flag = op->open_flag;
	bool will_truncate = (open_flag & O_TRUNC) != 0;
	bool got_write = false;
	int acc_mode = op->acc_mode;
	unsigned seq;
	struct inode *inode;
	struct path path;
	int error;

	nd->flags &= ~LOOKUP_PARENT;
	nd->flags |= op->intent;

	if (nd->last_type != LAST_NORM) {
		error = FUNC12(nd, nd->last_type);
		if (FUNC28(error))
			return error;
		goto finish_open;
	}

	if (!(open_flag & O_CREAT)) {
		if (nd->last.name[nd->last.len])
			nd->flags |= LOOKUP_FOLLOW | LOOKUP_DIRECTORY;
		/* we _can_ be in RCU mode here */
		error = FUNC20(nd, &path, &inode, &seq);
		if (FUNC19(error > 0))
			goto finish_lookup;

		if (error < 0)
			return error;

		FUNC0(nd->inode != dir->d_inode);
		FUNC0(nd->flags & LOOKUP_RCU);
	} else {
		/* create side of things */
		/*
		 * This will *only* deal with leaving RCU mode - LOOKUP_JUMPED
		 * has been cleared when we got to the last component we are
		 * about to look up
		 */
		error = FUNC4(nd);
		if (error)
			return error;

		FUNC3(nd->name, dir, AUDIT_INODE_PARENT);
		/* trailing slashes? */
		if (FUNC28(nd->last.name[nd->last.len]))
			return -EISDIR;
	}

	if (open_flag & (O_CREAT | O_TRUNC | O_WRONLY | O_RDWR)) {
		error = FUNC25(nd->path.mnt);
		if (!error)
			got_write = true;
		/*
		 * do _not_ fail yet - we might not need that or fail with
		 * a different error; let lookup_open() decide; we'll be
		 * dropping this one anyway.
		 */
	}
	if (open_flag & O_CREAT)
		FUNC15(dir->d_inode);
	else
		FUNC16(dir->d_inode);
	error = FUNC21(nd, &path, file, op, got_write);
	if (open_flag & O_CREAT)
		FUNC17(dir->d_inode);
	else
		FUNC18(dir->d_inode);

	if (error)
		goto out;

	if (file->f_mode & FMODE_OPENED) {
		if ((file->f_mode & FMODE_CREATED) ||
		    !FUNC1(FUNC10(file)->i_mode))
			will_truncate = false;

		FUNC3(nd->name, file->f_path.dentry, 0);
		goto opened;
	}

	if (file->f_mode & FMODE_CREATED) {
		/* Don't check for write permission, don't truncate */
		open_flag &= ~O_TRUNC;
		will_truncate = false;
		acc_mode = 0;
		FUNC26(&path, nd);
		goto finish_open_created;
	}

	/*
	 * If atomic_open() acquired write access it is dropped now due to
	 * possible mount and symlink following (this might be optimized away if
	 * necessary...)
	 */
	if (got_write) {
		FUNC24(nd->path.mnt);
		got_write = false;
	}

	error = FUNC11(&path, nd);
	if (FUNC28(error < 0))
		return error;

	if (FUNC28(FUNC8(path.dentry))) {
		FUNC26(&path, nd);
		return -ENOENT;
	}

	/*
	 * create/update audit record if it already exists.
	 */
	FUNC3(nd->name, path.dentry, 0);

	if (FUNC28((open_flag & (O_EXCL | O_CREAT)) == (O_EXCL | O_CREAT))) {
		FUNC26(&path, nd);
		return -EEXIST;
	}

	seq = 0;	/* out of RCU mode, so the value doesn't matter */
	inode = FUNC5(path.dentry);
finish_lookup:
	error = FUNC27(nd, &path, 0, inode, seq);
	if (FUNC28(error))
		return error;
finish_open:
	/* Why this, you ask?  _Now_ we might have grown LOOKUP_JUMPED... */
	error = FUNC4(nd);
	if (error)
		return error;
	FUNC3(nd->name, nd->path.dentry, 0);
	if (open_flag & O_CREAT) {
		error = -EISDIR;
		if (FUNC7(nd->path.dentry))
			goto out;
		error = FUNC22(dir,
					     FUNC5(nd->path.dentry));
		if (FUNC28(error))
			goto out;
	}
	error = -ENOTDIR;
	if ((nd->flags & LOOKUP_DIRECTORY) && !FUNC6(nd->path.dentry))
		goto out;
	if (!FUNC9(nd->path.dentry))
		will_truncate = false;

	if (will_truncate) {
		error = FUNC25(nd->path.mnt);
		if (error)
			goto out;
		got_write = true;
	}
finish_open_created:
	error = FUNC23(&nd->path, acc_mode, open_flag);
	if (error)
		goto out;
	FUNC0(file->f_mode & FMODE_OPENED); /* once it's opened, it's opened */
	error = FUNC29(&nd->path, file);
	if (error)
		goto out;
opened:
	error = FUNC14(file, op->acc_mode);
	if (!error && will_truncate)
		error = FUNC13(file);
out:
	if (FUNC28(error > 0)) {
		FUNC2(1);
		error = -EINVAL;
	}
	if (got_write)
		FUNC24(nd->path.mnt);
	return error;
}