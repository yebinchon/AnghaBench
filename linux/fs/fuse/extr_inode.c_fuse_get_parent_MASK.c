#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct qstr {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct fuse_entry_out {int dummy; } ;
struct fuse_conn {int /*<<< orphan*/  export_support; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 struct dentry* FUNC0 (int) ; 
 int ESTALE ; 
 scalar_t__ FUSE_ROOT_ID ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 struct qstr FUNC2 (char*,int) ; 
 struct inode* FUNC3 (struct dentry*) ; 
 struct dentry* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,struct qstr const*,struct fuse_entry_out*,struct inode**) ; 
 struct fuse_conn* FUNC7 (struct inode*) ; 
 scalar_t__ FUNC8 (struct inode*) ; 

__attribute__((used)) static struct dentry *FUNC9(struct dentry *child)
{
	struct inode *child_inode = FUNC3(child);
	struct fuse_conn *fc = FUNC7(child_inode);
	struct inode *inode;
	struct dentry *parent;
	struct fuse_entry_out outarg;
	const struct qstr name = FUNC2("..", 2);
	int err;

	if (!fc->export_support)
		return FUNC0(-ESTALE);

	err = FUNC6(child_inode->i_sb, FUNC8(child_inode),
			       &name, &outarg, &inode);
	if (err) {
		if (err == -ENOENT)
			return FUNC0(-ESTALE);
		return FUNC0(err);
	}

	parent = FUNC4(inode);
	if (!FUNC1(parent) && FUNC8(inode) != FUSE_ROOT_ID)
		FUNC5(parent);

	return parent;
}