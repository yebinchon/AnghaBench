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
struct inode {int dummy; } ;
struct fuse_inode {int /*<<< orphan*/  state; } ;
struct fuse_file {int /*<<< orphan*/  nodeid; int /*<<< orphan*/  fh; struct fuse_conn* fc; } ;
struct fuse_fallocate_in {scalar_t__ offset; scalar_t__ length; int mode; int /*<<< orphan*/  fh; } ;
struct fuse_conn {int no_fallocate; scalar_t__ writeback_cache; } ;
struct file {struct fuse_file* private_data; } ;
typedef  scalar_t__ loff_t ;
typedef  int /*<<< orphan*/  inarg ;
struct TYPE_6__ {int in_numargs; TYPE_1__* in_args; int /*<<< orphan*/  nodeid; int /*<<< orphan*/  opcode; } ;
struct TYPE_5__ {int size; struct fuse_fallocate_in* value; } ;

/* Variables and functions */
 int ENOSYS ; 
 long EOPNOTSUPP ; 
 int FALLOC_FL_KEEP_SIZE ; 
 int FALLOC_FL_PUNCH_HOLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__) ; 
 int /*<<< orphan*/  FUSE_FALLOCATE ; 
 int /*<<< orphan*/  FUSE_I_SIZE_UNSTABLE ; 
 TYPE_2__ args ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct inode* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (struct fuse_conn*,TYPE_2__*) ; 
 int FUNC6 (struct inode*,scalar_t__) ; 
 int FUNC7 (struct inode*,scalar_t__,scalar_t__) ; 
 struct fuse_inode* FUNC8 (struct inode*) ; 
 scalar_t__ FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int FUNC11 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static long FUNC15(struct file *file, int mode, loff_t offset,
				loff_t length)
{
	struct fuse_file *ff = file->private_data;
	struct inode *inode = FUNC2(file);
	struct fuse_inode *fi = FUNC8(inode);
	struct fuse_conn *fc = ff->fc;
	FUNC0(args);
	struct fuse_fallocate_in inarg = {
		.fh = ff->fh,
		.offset = offset,
		.length = length,
		.mode = mode
	};
	int err;
	bool lock_inode = !(mode & FALLOC_FL_KEEP_SIZE) ||
			   (mode & FALLOC_FL_PUNCH_HOLE);

	if (mode & ~(FALLOC_FL_KEEP_SIZE | FALLOC_FL_PUNCH_HOLE))
		return -EOPNOTSUPP;

	if (fc->no_fallocate)
		return -EOPNOTSUPP;

	if (lock_inode) {
		FUNC10(inode);
		if (mode & FALLOC_FL_PUNCH_HOLE) {
			loff_t endbyte = offset + length - 1;

			err = FUNC7(inode, offset, endbyte);
			if (err)
				goto out;
		}
	}

	if (!(mode & FALLOC_FL_KEEP_SIZE) &&
	    offset + length > FUNC9(inode)) {
		err = FUNC11(inode, offset + length);
		if (err)
			goto out;
	}

	if (!(mode & FALLOC_FL_KEEP_SIZE))
		FUNC13(FUSE_I_SIZE_UNSTABLE, &fi->state);

	args.opcode = FUSE_FALLOCATE;
	args.nodeid = ff->nodeid;
	args.in_numargs = 1;
	args.in_args[0].size = sizeof(inarg);
	args.in_args[0].value = &inarg;
	err = FUNC5(fc, &args);
	if (err == -ENOSYS) {
		fc->no_fallocate = 1;
		err = -EOPNOTSUPP;
	}
	if (err)
		goto out;

	/* we could have extended the file */
	if (!(mode & FALLOC_FL_KEEP_SIZE)) {
		bool changed = FUNC6(inode, offset + length);

		if (changed && fc->writeback_cache)
			FUNC3(file);
	}

	if (mode & FALLOC_FL_PUNCH_HOLE)
		FUNC14(inode, offset, offset + length - 1);

	FUNC4(inode);

out:
	if (!(mode & FALLOC_FL_KEEP_SIZE))
		FUNC1(FUSE_I_SIZE_UNSTABLE, &fi->state);

	if (lock_inode)
		FUNC12(inode);

	return err;
}