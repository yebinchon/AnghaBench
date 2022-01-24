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
struct fuse_flush_in {int /*<<< orphan*/  lock_owner; int /*<<< orphan*/  fh; } ;
struct fuse_file {int /*<<< orphan*/  fh; } ;
struct fuse_conn {int no_flush; } ;
struct file {int /*<<< orphan*/  f_mapping; struct fuse_file* private_data; } ;
typedef  int /*<<< orphan*/  inarg ;
typedef  int /*<<< orphan*/  fl_owner_t ;
struct TYPE_6__ {int in_numargs; int force; TYPE_1__* in_args; int /*<<< orphan*/  nodeid; int /*<<< orphan*/  opcode; } ;
struct TYPE_5__ {int size; struct fuse_flush_in* value; } ;

/* Variables and functions */
 int EIO ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__) ; 
 int /*<<< orphan*/  FUSE_FLUSH ; 
 TYPE_2__ args ; 
 struct inode* FUNC1 (struct file*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_conn*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct fuse_conn*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 struct fuse_conn* FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 scalar_t__ FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct fuse_flush_in*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct inode*,int) ; 

__attribute__((used)) static int FUNC13(struct file *file, fl_owner_t id)
{
	struct inode *inode = FUNC1(file);
	struct fuse_conn *fc = FUNC6(inode);
	struct fuse_file *ff = file->private_data;
	struct fuse_flush_in inarg;
	FUNC0(args);
	int err;

	if (FUNC10(inode))
		return -EIO;

	if (fc->no_flush)
		return 0;

	err = FUNC12(inode, 1);
	if (err)
		return err;

	FUNC8(inode);
	FUNC5(inode);
	FUNC9(inode);

	err = FUNC2(file->f_mapping);
	if (err)
		return err;

	FUNC11(&inarg, 0, sizeof(inarg));
	inarg.fh = ff->fh;
	inarg.lock_owner = FUNC3(fc, id);
	args.opcode = FUSE_FLUSH;
	args.nodeid = FUNC7(inode);
	args.in_numargs = 1;
	args.in_args[0].size = sizeof(inarg);
	args.in_args[0].value = &inarg;
	args.force = true;

	err = FUNC4(fc, &args);
	if (err == -ENOSYS) {
		fc->no_flush = 1;
		err = 0;
	}
	return err;
}