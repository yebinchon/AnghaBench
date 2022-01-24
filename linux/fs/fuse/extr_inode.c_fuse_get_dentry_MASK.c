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
struct super_block {int dummy; } ;
struct qstr {int dummy; } ;
struct inode {scalar_t__ i_generation; } ;
struct fuse_inode_handle {scalar_t__ nodeid; scalar_t__ generation; } ;
struct fuse_entry_out {int dummy; } ;
struct fuse_conn {int /*<<< orphan*/  export_support; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENOENT ; 
 struct dentry* FUNC0 (int) ; 
 int ESTALE ; 
 scalar_t__ FUSE_ROOT_ID ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 struct qstr FUNC2 (char*,int) ; 
 struct dentry* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  fuse_inode_eq ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int FUNC5 (struct super_block*,scalar_t__,struct qstr const*,struct fuse_entry_out*,struct inode**) ; 
 struct fuse_conn* FUNC6 (struct super_block*) ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 struct inode* FUNC8 (struct super_block*,scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 

__attribute__((used)) static struct dentry *FUNC10(struct super_block *sb,
				      struct fuse_inode_handle *handle)
{
	struct fuse_conn *fc = FUNC6(sb);
	struct inode *inode;
	struct dentry *entry;
	int err = -ESTALE;

	if (handle->nodeid == 0)
		goto out_err;

	inode = FUNC8(sb, handle->nodeid, fuse_inode_eq, &handle->nodeid);
	if (!inode) {
		struct fuse_entry_out outarg;
		const struct qstr name = FUNC2(".", 1);

		if (!fc->export_support)
			goto out_err;

		err = FUNC5(sb, handle->nodeid, &name, &outarg,
				       &inode);
		if (err && err != -ENOENT)
			goto out_err;
		if (err || !inode) {
			err = -ESTALE;
			goto out_err;
		}
		err = -EIO;
		if (FUNC7(inode) != handle->nodeid)
			goto out_iput;
	}
	err = -ESTALE;
	if (inode->i_generation != handle->generation)
		goto out_iput;

	entry = FUNC3(inode);
	if (!FUNC1(entry) && FUNC7(inode) != FUSE_ROOT_ID)
		FUNC4(entry);

	return entry;

 out_iput:
	FUNC9(inode);
 out_err:
	return FUNC0(err);
}