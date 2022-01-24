#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; struct super_block* i_sb; } ;
struct fat_slot_info {int /*<<< orphan*/  bh; int /*<<< orphan*/  i_pos; int /*<<< orphan*/  de; } ;
struct dentry {scalar_t__ d_parent; int /*<<< orphan*/  d_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_lock; } ;

/* Variables and functions */
 int ENOENT ; 
 struct dentry* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 TYPE_1__* FUNC2 (struct super_block*) ; 
 int FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*,struct dentry*) ; 
 struct dentry* FUNC8 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*) ; 
 struct inode* FUNC10 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct inode*,int /*<<< orphan*/ *,struct fat_slot_info*) ; 

__attribute__((used)) static struct dentry *FUNC17(struct inode *dir, struct dentry *dentry,
				  unsigned int flags)
{
	struct super_block *sb = dir->i_sb;
	struct fat_slot_info sinfo;
	struct inode *inode;
	struct dentry *alias;
	int err;

	FUNC13(&FUNC2(sb)->s_lock);

	err = FUNC16(dir, &dentry->d_name, &sinfo);
	if (err) {
		if (err == -ENOENT) {
			inode = NULL;
			goto out;
		}
		goto error;
	}

	inode = FUNC10(sb, sinfo.de, sinfo.i_pos);
	FUNC5(sinfo.bh);
	if (FUNC1(inode)) {
		err = FUNC3(inode);
		goto error;
	}

	alias = FUNC6(inode);
	/*
	 * Checking "alias->d_parent == dentry->d_parent" to make sure
	 * FS is not corrupted (especially double linked dir).
	 */
	if (alias && alias->d_parent == dentry->d_parent) {
		/*
		 * This inode has non anonymous-DCACHE_DISCONNECTED
		 * dentry. This means, the user did ->lookup() by an
		 * another name (longname vs 8.3 alias of it) in past.
		 *
		 * Switch to new one for reason of locality if possible.
		 */
		if (!FUNC4(inode->i_mode))
			FUNC7(alias, dentry);
		FUNC12(inode);
		FUNC14(&FUNC2(sb)->s_lock);
		return alias;
	} else
		FUNC9(alias);

out:
	FUNC14(&FUNC2(sb)->s_lock);
	if (!inode)
		FUNC15(dentry, FUNC11(dir));
	return FUNC8(inode, dentry);
error:
	FUNC14(&FUNC2(sb)->s_lock);
	return FUNC0(err);
}