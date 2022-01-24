#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct inode {TYPE_5__* i_mapping; int /*<<< orphan*/  i_fop; int /*<<< orphan*/  i_mode; } ;
struct file_operations {int (* open ) (struct inode*,struct file*) ;scalar_t__ write_iter; scalar_t__ write; scalar_t__ read_iter; scalar_t__ read; } ;
struct TYPE_9__ {int /*<<< orphan*/ * dentry; int /*<<< orphan*/ * mnt; } ;
struct file {int f_flags; int f_mode; struct inode* f_inode; TYPE_3__ f_path; struct file_operations const* f_op; TYPE_5__* f_mapping; int /*<<< orphan*/  f_ra; int /*<<< orphan*/  f_write_hint; int /*<<< orphan*/  f_wb_err; } ;
struct TYPE_10__ {TYPE_2__* a_ops; TYPE_1__* host; } ;
struct TYPE_8__ {int /*<<< orphan*/  direct_IO; } ;
struct TYPE_7__ {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int ENODEV ; 
 int FMODE_ATOMIC_POS ; 
 int FMODE_CAN_READ ; 
 int FMODE_CAN_WRITE ; 
 int FMODE_EXEC ; 
 int FMODE_LSEEK ; 
 int FMODE_OPENED ; 
 int FMODE_PATH ; 
 int FMODE_PREAD ; 
 int FMODE_PWRITE ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int FMODE_WRITER ; 
 int O_CREAT ; 
 int O_DIRECT ; 
 int O_EXCL ; 
 int O_NOCTTY ; 
 int O_PATH ; 
 int O_TRUNC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  WRITE_LIFE_NOT_SET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 struct file_operations const* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct file_operations const*) ; 
 int FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct file*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int FUNC19 (struct file*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int) ; 

__attribute__((used)) static int FUNC23(struct file *f,
			  struct inode *inode,
			  int (*open)(struct inode *, struct file *))
{
	static const struct file_operations empty_fops = {};
	int error;

	FUNC16(&f->f_path);
	f->f_inode = inode;
	f->f_mapping = inode->i_mapping;

	/* Ensure that we skip any errors that predate opening of the file */
	f->f_wb_err = FUNC9(f->f_mapping);

	if (FUNC22(f->f_flags & O_PATH)) {
		f->f_mode = FMODE_PATH | FMODE_OPENED;
		f->f_op = &empty_fops;
		return 0;
	}

	/* Any file opened for execve()/uselib() has to be a regular file. */
	if (FUNC22(f->f_flags & FMODE_EXEC && !FUNC1(inode->i_mode))) {
		error = -EACCES;
		goto cleanup_file;
	}

	if (f->f_mode & FMODE_WRITE && !FUNC20(inode->i_mode)) {
		error = FUNC12(inode);
		if (FUNC22(error))
			goto cleanup_file;
		error = FUNC5(f->f_path.mnt);
		if (FUNC22(error)) {
			FUNC18(inode);
			goto cleanup_file;
		}
		f->f_mode |= FMODE_WRITER;
	}

	/* POSIX.1-2008/SUSv4 Section XSI 2.9.7 */
	if (FUNC1(inode->i_mode) || FUNC0(inode->i_mode))
		f->f_mode |= FMODE_ATOMIC_POS;

	f->f_op = FUNC10(inode->i_fop);
	if (FUNC2(!f->f_op)) {
		error = -ENODEV;
		goto cleanup_all;
	}

	error = FUNC19(f);
	if (error)
		goto cleanup_all;

	error = FUNC6(FUNC15(f), f->f_flags);
	if (error)
		goto cleanup_all;

	/* normally all 3 are set; ->open() can clear them if needed */
	f->f_mode |= FMODE_LSEEK | FMODE_PREAD | FMODE_PWRITE;
	if (!open)
		open = f->f_op->open;
	if (open) {
		error = open(inode, f);
		if (error)
			goto cleanup_all;
	}
	f->f_mode |= FMODE_OPENED;
	if ((f->f_mode & (FMODE_READ | FMODE_WRITE)) == FMODE_READ)
		FUNC13(inode);
	if ((f->f_mode & FMODE_READ) &&
	     FUNC14(f->f_op->read || f->f_op->read_iter))
		f->f_mode |= FMODE_CAN_READ;
	if ((f->f_mode & FMODE_WRITE) &&
	     FUNC14(f->f_op->write || f->f_op->write_iter))
		f->f_mode |= FMODE_CAN_WRITE;

	f->f_write_hint = WRITE_LIFE_NOT_SET;
	f->f_flags &= ~(O_CREAT | O_EXCL | O_NOCTTY | O_TRUNC);

	FUNC7(&f->f_ra, f->f_mapping->host->i_mapping);

	/* NB: we're sure to have correct a_ops only after f_op->open */
	if (f->f_flags & O_DIRECT) {
		if (!f->f_mapping->a_ops || !f->f_mapping->a_ops->direct_IO)
			return -EINVAL;
	}

	/*
	 * XXX: Huge page cache doesn't support writing yet. Drop all page
	 * cache for this file before processing writes.
	 */
	if ((f->f_mode & FMODE_WRITE) && FUNC8(inode->i_mapping))
		FUNC21(inode, 0);

	return 0;

cleanup_all:
	if (FUNC3(error > 0))
		error = -EINVAL;
	FUNC11(f->f_op);
	if (f->f_mode & FMODE_WRITER) {
		FUNC18(inode);
		FUNC4(f->f_path.mnt);
	}
cleanup_file:
	FUNC17(&f->f_path);
	f->f_path.mnt = NULL;
	f->f_path.dentry = NULL;
	f->f_inode = NULL;
	return error;
}