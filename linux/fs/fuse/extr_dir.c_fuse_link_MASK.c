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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct fuse_link_in {int /*<<< orphan*/  oldnodeid; } ;
struct fuse_inode {int /*<<< orphan*/  lock; int /*<<< orphan*/  attr_version; } ;
struct fuse_conn {int /*<<< orphan*/  attr_version; } ;
struct TYPE_7__ {int len; struct fuse_link_in* name; } ;
struct dentry {TYPE_2__ d_name; } ;
typedef  int /*<<< orphan*/  inarg ;
struct TYPE_8__ {int in_numargs; TYPE_1__* in_args; int /*<<< orphan*/  opcode; } ;
struct TYPE_6__ {int size; struct fuse_link_in* value; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__) ; 
 int /*<<< orphan*/  FUSE_LINK ; 
 TYPE_3__ args ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct fuse_conn*,TYPE_3__*,struct inode*,struct dentry*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 struct fuse_conn* FUNC6 (struct inode*) ; 
 struct fuse_inode* FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct fuse_link_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct dentry *entry, struct inode *newdir,
		     struct dentry *newent)
{
	int err;
	struct fuse_link_in inarg;
	struct inode *inode = FUNC3(entry);
	struct fuse_conn *fc = FUNC6(inode);
	FUNC0(args);

	FUNC10(&inarg, 0, sizeof(inarg));
	inarg.oldnodeid = FUNC8(inode);
	args.opcode = FUSE_LINK;
	args.in_numargs = 2;
	args.in_args[0].size = sizeof(inarg);
	args.in_args[0].value = &inarg;
	args.in_args[1].size = newent->d_name.len + 1;
	args.in_args[1].value = newent->d_name.name;
	err = FUNC2(fc, &args, newdir, newent, inode->i_mode);
	/* Contrary to "normal" filesystems it can happen that link
	   makes two "logical" inodes point to the same "physical"
	   inode.  We invalidate the attributes of the old one, so it
	   will reflect changes in the backing inode (link count,
	   etc.)
	*/
	if (!err) {
		struct fuse_inode *fi = FUNC7(inode);

		FUNC11(&fi->lock);
		fi->attr_version = FUNC1(&fc->attr_version);
		FUNC9(inode);
		FUNC12(&fi->lock);
		FUNC4(inode);
		FUNC5(inode);
	} else if (err == -EINTR) {
		FUNC4(inode);
	}
	return err;
}