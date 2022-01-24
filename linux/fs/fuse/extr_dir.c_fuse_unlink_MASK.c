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
struct inode {scalar_t__ i_nlink; } ;
struct fuse_inode {int /*<<< orphan*/  lock; int /*<<< orphan*/  attr_version; } ;
struct fuse_conn {int /*<<< orphan*/  attr_version; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; scalar_t__ len; } ;
struct dentry {TYPE_2__ d_name; } ;
struct TYPE_8__ {int in_numargs; TYPE_1__* in_args; int /*<<< orphan*/  nodeid; int /*<<< orphan*/  opcode; } ;
struct TYPE_6__ {int /*<<< orphan*/  value; scalar_t__ size; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__) ; 
 int /*<<< orphan*/  FUSE_UNLINK ; 
 TYPE_3__ args ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 int FUNC8 (struct fuse_conn*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 struct fuse_conn* FUNC10 (struct inode*) ; 
 struct fuse_inode* FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct inode *dir, struct dentry *entry)
{
	int err;
	struct fuse_conn *fc = FUNC10(dir);
	FUNC0(args);

	args.opcode = FUSE_UNLINK;
	args.nodeid = FUNC12(dir);
	args.in_numargs = 1;
	args.in_args[0].size = entry->d_name.len + 1;
	args.in_args[0].value = entry->d_name.name;
	err = FUNC8(fc, &args);
	if (!err) {
		struct inode *inode = FUNC2(entry);
		struct fuse_inode *fi = FUNC11(inode);

		FUNC13(&fi->lock);
		fi->attr_version = FUNC1(&fc->attr_version);
		/*
		 * If i_nlink == 0 then unlink doesn't make sense, yet this can
		 * happen if userspace filesystem is careless.  It would be
		 * difficult to enforce correct nlink usage so just ignore this
		 * condition here
		 */
		if (inode->i_nlink > 0)
			FUNC3(inode);
		FUNC14(&fi->lock);
		FUNC5(inode);
		FUNC4(dir);
		FUNC7(entry);
		FUNC9(inode);
	} else if (err == -EINTR)
		FUNC6(entry);
	return err;
}