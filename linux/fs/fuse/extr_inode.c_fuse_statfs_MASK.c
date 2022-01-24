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
struct super_block {int dummy; } ;
struct kstatfs {int /*<<< orphan*/  f_type; } ;
struct fuse_statfs_out {int /*<<< orphan*/  st; } ;
struct fuse_conn {int dummy; } ;
struct dentry {struct super_block* d_sb; } ;
typedef  int /*<<< orphan*/  outarg ;
struct TYPE_6__ {int out_numargs; TYPE_1__* out_args; int /*<<< orphan*/  nodeid; int /*<<< orphan*/  opcode; scalar_t__ in_numargs; } ;
struct TYPE_5__ {int size; struct fuse_statfs_out* value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__) ; 
 int /*<<< orphan*/  FUSE_STATFS ; 
 int /*<<< orphan*/  FUSE_SUPER_MAGIC ; 
 TYPE_2__ args ; 
 int /*<<< orphan*/  FUNC1 (struct kstatfs*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_conn*) ; 
 int FUNC4 (struct fuse_conn*,TYPE_2__*) ; 
 struct fuse_conn* FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fuse_statfs_out*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct dentry *dentry, struct kstatfs *buf)
{
	struct super_block *sb = dentry->d_sb;
	struct fuse_conn *fc = FUNC5(sb);
	FUNC0(args);
	struct fuse_statfs_out outarg;
	int err;

	if (!FUNC3(fc)) {
		buf->f_type = FUSE_SUPER_MAGIC;
		return 0;
	}

	FUNC7(&outarg, 0, sizeof(outarg));
	args.in_numargs = 0;
	args.opcode = FUSE_STATFS;
	args.nodeid = FUNC6(FUNC2(dentry));
	args.out_numargs = 1;
	args.out_args[0].size = sizeof(outarg);
	args.out_args[0].value = &outarg;
	err = FUNC4(fc, &args);
	if (!err)
		FUNC1(buf, &outarg.st);
	return err;
}