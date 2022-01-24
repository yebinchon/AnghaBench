#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct inode {scalar_t__ i_size; scalar_t__ i_sb; } ;
struct fuse_write_out {int size; } ;
struct fuse_inode {int /*<<< orphan*/  state; } ;
struct fuse_file {int /*<<< orphan*/  nodeid; int /*<<< orphan*/  fh; struct fuse_conn* fc; } ;
struct fuse_copy_file_range_in {scalar_t__ off_in; scalar_t__ off_out; size_t len; unsigned int flags; int /*<<< orphan*/  fh_out; int /*<<< orphan*/  nodeid_out; int /*<<< orphan*/  fh_in; } ;
struct fuse_conn {int no_copy_file_range; scalar_t__ writeback_cache; } ;
struct file {struct fuse_file* private_data; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  outarg ;
typedef  scalar_t__ loff_t ;
typedef  int /*<<< orphan*/  inarg ;
struct TYPE_8__ {int in_numargs; int out_numargs; TYPE_2__* out_args; TYPE_1__* in_args; int /*<<< orphan*/  nodeid; int /*<<< orphan*/  opcode; } ;
struct TYPE_7__ {int size; struct fuse_write_out* value; } ;
struct TYPE_6__ {int size; struct fuse_copy_file_range_in* value; } ;

/* Variables and functions */
 int ENOSYS ; 
 int EOPNOTSUPP ; 
 int EXDEV ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__) ; 
 int /*<<< orphan*/  FUSE_COPY_FILE_RANGE ; 
 int /*<<< orphan*/  FUSE_I_SIZE_UNSTABLE ; 
 TYPE_3__ args ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 struct inode* FUNC3 (struct file*) ; 
 int FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (struct fuse_conn*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,scalar_t__) ; 
 int FUNC9 (struct inode*,scalar_t__,scalar_t__) ; 
 struct fuse_inode* FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC14(struct file *file_in, loff_t pos_in,
				      struct file *file_out, loff_t pos_out,
				      size_t len, unsigned int flags)
{
	struct fuse_file *ff_in = file_in->private_data;
	struct fuse_file *ff_out = file_out->private_data;
	struct inode *inode_in = FUNC3(file_in);
	struct inode *inode_out = FUNC3(file_out);
	struct fuse_inode *fi_out = FUNC10(inode_out);
	struct fuse_conn *fc = ff_in->fc;
	FUNC0(args);
	struct fuse_copy_file_range_in inarg = {
		.fh_in = ff_in->fh,
		.off_in = pos_in,
		.nodeid_out = ff_out->nodeid,
		.fh_out = ff_out->fh,
		.off_out = pos_out,
		.len = len,
		.flags = flags
	};
	struct fuse_write_out outarg;
	ssize_t err;
	/* mark unstable when write-back is not used, and file_out gets
	 * extended */
	bool is_unstable = (!fc->writeback_cache) &&
			   ((pos_out + len) > inode_out->i_size);

	if (fc->no_copy_file_range)
		return -EOPNOTSUPP;

	if (FUNC3(file_in)->i_sb != FUNC3(file_out)->i_sb)
		return -EXDEV;

	if (fc->writeback_cache) {
		FUNC11(inode_in);
		err = FUNC9(inode_in, pos_in, pos_in + len);
		FUNC12(inode_in);
		if (err)
			return err;
	}

	FUNC11(inode_out);

	err = FUNC4(file_out);
	if (err)
		goto out;

	if (fc->writeback_cache) {
		err = FUNC9(inode_out, pos_out, pos_out + len);
		if (err)
			goto out;
	}

	if (is_unstable)
		FUNC13(FUSE_I_SIZE_UNSTABLE, &fi_out->state);

	args.opcode = FUSE_COPY_FILE_RANGE;
	args.nodeid = ff_in->nodeid;
	args.in_numargs = 1;
	args.in_args[0].size = sizeof(inarg);
	args.in_args[0].value = &inarg;
	args.out_numargs = 1;
	args.out_args[0].size = sizeof(outarg);
	args.out_args[0].value = &outarg;
	err = FUNC7(fc, &args);
	if (err == -ENOSYS) {
		fc->no_copy_file_range = 1;
		err = -EOPNOTSUPP;
	}
	if (err)
		goto out;

	if (fc->writeback_cache) {
		FUNC8(inode_out, pos_out + outarg.size);
		FUNC5(file_out);
	}

	FUNC6(inode_out);

	err = outarg.size;
out:
	if (is_unstable)
		FUNC1(FUSE_I_SIZE_UNSTABLE, &fi_out->state);

	FUNC12(inode_out);
	FUNC2(file_in);

	return err;
}