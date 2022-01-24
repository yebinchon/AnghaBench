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
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct dentry {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int ip_flags; int ip_dyn_features; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  I_MUTEX_CHILD ; 
 int OCFS2_HAS_XATTR_FL ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int OCFS2_INODE_SYSTEM_FILE ; 
 int /*<<< orphan*/  OI_LS_REFLINK_TARGET ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 struct inode* FUNC2 (struct dentry*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (struct inode*,struct buffer_head*) ; 
 int FUNC9 (struct inode*,struct buffer_head*,struct inode*,struct buffer_head*,int) ; 
 int FUNC10 (struct inode*,struct buffer_head*,struct inode*,struct buffer_head*,int) ; 
 int FUNC11 (struct inode*,struct buffer_head**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int) ; 
 int FUNC13 (struct inode*,struct buffer_head*,struct inode*,struct buffer_head*,int) ; 

__attribute__((used)) static int FUNC14(struct dentry *old_dentry,
			   struct buffer_head *old_bh,
			   struct inode *new_inode,
			   bool preserve)
{
	int ret;
	struct inode *inode = FUNC2(old_dentry);
	struct buffer_head *new_bh = NULL;

	if (FUNC0(inode)->ip_flags & OCFS2_INODE_SYSTEM_FILE) {
		ret = -EINVAL;
		FUNC7(ret);
		goto out;
	}

	ret = FUNC4(inode->i_mapping);
	if (ret) {
		FUNC7(ret);
		goto out;
	}

	ret = FUNC8(inode, old_bh);
	if (ret) {
		FUNC7(ret);
		goto out;
	}

	FUNC5(new_inode, I_MUTEX_CHILD);
	ret = FUNC11(new_inode, &new_bh, 1,
				      OI_LS_REFLINK_TARGET);
	if (ret) {
		FUNC7(ret);
		goto out_unlock;
	}

	ret = FUNC10(inode, old_bh,
					new_inode, new_bh, preserve);
	if (ret) {
		FUNC7(ret);
		goto inode_unlock;
	}

	if (FUNC0(inode)->ip_dyn_features & OCFS2_HAS_XATTR_FL) {
		ret = FUNC13(inode, old_bh,
					   new_inode, new_bh,
					   preserve);
		if (ret) {
			FUNC7(ret);
			goto inode_unlock;
		}
	}

	ret = FUNC9(inode, old_bh,
				     new_inode, new_bh, preserve);
	if (ret)
		FUNC7(ret);

inode_unlock:
	FUNC12(new_inode, 1);
	FUNC1(new_bh);
out_unlock:
	FUNC6(new_inode);
out:
	if (!ret) {
		ret = FUNC3(inode->i_mapping);
		if (ret)
			FUNC7(ret);
	}
	return ret;
}