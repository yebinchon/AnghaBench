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
struct TYPE_4__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_3__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {TYPE_2__ i_ctime; TYPE_1__ i_mtime; } ;
struct fuse_setattr_in {int /*<<< orphan*/  fh; int /*<<< orphan*/  valid; int /*<<< orphan*/  ctimensec; int /*<<< orphan*/  ctime; int /*<<< orphan*/  mtimensec; int /*<<< orphan*/  mtime; } ;
struct fuse_file {int /*<<< orphan*/  fh; } ;
struct fuse_conn {int minor; } ;
struct fuse_attr_out {int /*<<< orphan*/  fh; int /*<<< orphan*/  valid; int /*<<< orphan*/  ctimensec; int /*<<< orphan*/  ctime; int /*<<< orphan*/  mtimensec; int /*<<< orphan*/  mtime; } ;
typedef  int /*<<< orphan*/  outarg ;
typedef  int /*<<< orphan*/  inarg ;

/* Variables and functions */
 int /*<<< orphan*/  FATTR_CTIME ; 
 int /*<<< orphan*/  FATTR_FH ; 
 int /*<<< orphan*/  FATTR_MTIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_conn*,int /*<<< orphan*/ *,struct inode*,struct fuse_setattr_in*,struct fuse_setattr_in*) ; 
 int FUNC2 (struct fuse_conn*,int /*<<< orphan*/ *) ; 
 struct fuse_conn* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_setattr_in*,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct inode *inode, struct fuse_file *ff)
{
	struct fuse_conn *fc = FUNC3(inode);
	FUNC0(args);
	struct fuse_setattr_in inarg;
	struct fuse_attr_out outarg;

	FUNC4(&inarg, 0, sizeof(inarg));
	FUNC4(&outarg, 0, sizeof(outarg));

	inarg.valid = FATTR_MTIME;
	inarg.mtime = inode->i_mtime.tv_sec;
	inarg.mtimensec = inode->i_mtime.tv_nsec;
	if (fc->minor >= 23) {
		inarg.valid |= FATTR_CTIME;
		inarg.ctime = inode->i_ctime.tv_sec;
		inarg.ctimensec = inode->i_ctime.tv_nsec;
	}
	if (ff) {
		inarg.valid |= FATTR_FH;
		inarg.fh = ff->fh;
	}
	FUNC1(fc, &args, inode, &inarg, &outarg);

	return FUNC2(fc, &args);
}