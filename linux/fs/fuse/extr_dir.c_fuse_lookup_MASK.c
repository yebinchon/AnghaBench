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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct fuse_entry_out {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;

/* Variables and functions */
 int EIO ; 
 int ENOENT ; 
 struct dentry* FUNC0 (int) ; 
 scalar_t__ FUSE_ROOT_ID ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct fuse_entry_out*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int FUNC7 (struct inode*) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,struct fuse_entry_out*,struct inode**) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int) ; 
 scalar_t__ FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 

__attribute__((used)) static struct dentry *FUNC12(struct inode *dir, struct dentry *entry,
				  unsigned int flags)
{
	int err;
	struct fuse_entry_out outarg;
	struct inode *inode;
	struct dentry *newent;
	bool outarg_valid = true;
	bool locked;

	locked = FUNC7(dir);
	err = FUNC8(dir->i_sb, FUNC10(dir), &entry->d_name,
			       &outarg, &inode);
	FUNC9(dir, locked);
	if (err == -ENOENT) {
		outarg_valid = false;
		err = 0;
	}
	if (err)
		goto out_err;

	err = -EIO;
	if (inode && FUNC10(inode) == FUSE_ROOT_ID)
		goto out_iput;

	newent = FUNC3(inode, entry);
	err = FUNC2(newent);
	if (FUNC1(newent))
		goto out_err;

	entry = newent ? newent : entry;
	if (outarg_valid)
		FUNC5(entry, &outarg);
	else
		FUNC6(entry);

	if (inode)
		FUNC4(dir);
	return newent;

 out_iput:
	FUNC11(inode);
 out_err:
	return FUNC0(err);
}