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
typedef  int umode_t ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct fuse_forget_link {int dummy; } ;
struct TYPE_4__ {int mode; } ;
struct fuse_entry_out {int /*<<< orphan*/  nodeid; TYPE_2__ attr; int /*<<< orphan*/  generation; } ;
struct fuse_conn {int dummy; } ;
struct fuse_args {int out_numargs; TYPE_1__* out_args; int /*<<< orphan*/  nodeid; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  outarg ;
struct TYPE_3__ {int size; struct fuse_entry_out* value; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int S_IFMT ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct fuse_entry_out*) ; 
 struct fuse_forget_link* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*,struct fuse_entry_out*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 struct inode* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct fuse_conn*,struct fuse_forget_link*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct fuse_conn*,struct fuse_args*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct fuse_forget_link*) ; 
 int /*<<< orphan*/  FUNC15 (struct fuse_entry_out*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC16(struct fuse_conn *fc, struct fuse_args *args,
			    struct inode *dir, struct dentry *entry,
			    umode_t mode)
{
	struct fuse_entry_out outarg;
	struct inode *inode;
	struct dentry *d;
	int err;
	struct fuse_forget_link *forget;

	forget = FUNC6();
	if (!forget)
		return -ENOMEM;

	FUNC15(&outarg, 0, sizeof(outarg));
	args->nodeid = FUNC12(dir);
	args->out_numargs = 1;
	args->out_args[0].size = sizeof(outarg);
	args->out_args[0].value = &outarg;
	err = FUNC11(fc, args);
	if (err)
		goto out_put_forget_req;

	err = -EIO;
	if (FUNC13(outarg.nodeid))
		goto out_put_forget_req;

	if ((outarg.attr.mode ^ mode) & S_IFMT)
		goto out_put_forget_req;

	inode = FUNC9(dir->i_sb, outarg.nodeid, outarg.generation,
			  &outarg.attr, FUNC5(&outarg), 0);
	if (!inode) {
		FUNC10(fc, forget, outarg.nodeid, 1);
		return -ENOMEM;
	}
	FUNC14(forget);

	FUNC2(entry);
	d = FUNC3(inode, entry);
	if (FUNC0(d))
		return FUNC1(d);

	if (d) {
		FUNC7(d, &outarg);
		FUNC4(d);
	} else {
		FUNC7(entry, &outarg);
	}
	FUNC8(dir);
	return 0;

 out_put_forget_req:
	FUNC14(forget);
	return err;
}