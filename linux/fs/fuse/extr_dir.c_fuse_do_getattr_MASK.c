#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct kstat {int dummy; } ;
struct inode {int i_mode; } ;
struct TYPE_11__ {int mode; } ;
struct fuse_getattr_in {TYPE_4__ attr; int /*<<< orphan*/  fh; int /*<<< orphan*/  getattr_flags; } ;
struct fuse_file {int /*<<< orphan*/  fh; } ;
struct fuse_conn {int dummy; } ;
struct fuse_attr_out {TYPE_4__ attr; int /*<<< orphan*/  fh; int /*<<< orphan*/  getattr_flags; } ;
struct file {struct fuse_file* private_data; } ;
typedef  int /*<<< orphan*/  outarg ;
typedef  int /*<<< orphan*/  inarg ;
struct TYPE_10__ {int in_numargs; int out_numargs; TYPE_2__* out_args; TYPE_1__* in_args; int /*<<< orphan*/  nodeid; int /*<<< orphan*/  opcode; } ;
struct TYPE_9__ {int size; struct fuse_getattr_in* value; } ;
struct TYPE_8__ {int size; struct fuse_getattr_in* value; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__) ; 
 int /*<<< orphan*/  FUSE_GETATTR ; 
 int /*<<< orphan*/  FUSE_GETATTR_FH ; 
 int S_IFMT ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_3__ args ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_getattr_in*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,TYPE_4__*,struct kstat*) ; 
 int /*<<< orphan*/  FUNC5 (struct fuse_conn*) ; 
 int FUNC6 (struct fuse_conn*,TYPE_3__*) ; 
 struct fuse_conn* FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct fuse_getattr_in*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct inode *inode, struct kstat *stat,
			   struct file *file)
{
	int err;
	struct fuse_getattr_in inarg;
	struct fuse_attr_out outarg;
	struct fuse_conn *fc = FUNC7(inode);
	FUNC0(args);
	u64 attr_version;

	attr_version = FUNC5(fc);

	FUNC10(&inarg, 0, sizeof(inarg));
	FUNC10(&outarg, 0, sizeof(outarg));
	/* Directories have separate file-handle space */
	if (file && FUNC1(inode->i_mode)) {
		struct fuse_file *ff = file->private_data;

		inarg.getattr_flags |= FUSE_GETATTR_FH;
		inarg.fh = ff->fh;
	}
	args.opcode = FUSE_GETATTR;
	args.nodeid = FUNC8(inode);
	args.in_numargs = 1;
	args.in_args[0].size = sizeof(inarg);
	args.in_args[0].value = &inarg;
	args.out_numargs = 1;
	args.out_args[0].size = sizeof(outarg);
	args.out_args[0].value = &outarg;
	err = FUNC6(fc, &args);
	if (!err) {
		if ((inode->i_mode ^ outarg.attr.mode) & S_IFMT) {
			FUNC9(inode);
			err = -EIO;
		} else {
			FUNC3(inode, &outarg.attr,
					       FUNC2(&outarg),
					       attr_version);
			if (stat)
				FUNC4(inode, &outarg.attr, stat);
		}
	}
	return err;
}