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
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct dentry {int /*<<< orphan*/  d_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_STATE_NEWENTRY ; 
 struct dentry* FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (struct inode*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct inode *inode)
{
	struct dentry *dentry = NULL;
	struct inode *next;
	int ret = 0;

	if (!FUNC4(inode, EXT4_STATE_NEWENTRY))
		return 0;
	inode = FUNC5(inode);
	while (FUNC4(inode, EXT4_STATE_NEWENTRY)) {
		FUNC3(inode, EXT4_STATE_NEWENTRY);
		dentry = FUNC0(inode);
		if (!dentry)
			break;
		next = FUNC5(FUNC1(dentry->d_parent));
		FUNC2(dentry);
		if (!next)
			break;
		FUNC6(inode);
		inode = next;
		/*
		 * The directory inode may have gone through rmdir by now. But
		 * the inode itself and its blocks are still allocated (we hold
		 * a reference to the inode so it didn't go through
		 * ext4_evict_inode()) and so we are safe to flush metadata
		 * blocks and the inode.
		 */
		ret = FUNC8(inode->i_mapping);
		if (ret)
			break;
		ret = FUNC7(inode, 1);
		if (ret)
			break;
	}
	FUNC6(inode);
	return ret;
}