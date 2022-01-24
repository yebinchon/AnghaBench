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
struct integrity_iint_cache {int /*<<< orphan*/  atomic_flags; } ;
struct inode {int i_opflags; int /*<<< orphan*/  i_mode; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int IMA_APPRAISE ; 
 int /*<<< orphan*/  IMA_CHANGE_ATTR ; 
 int /*<<< orphan*/  IMA_UPDATE_XATTR ; 
 int IOP_XATTR ; 
 int /*<<< orphan*/  MAY_ACCESS ; 
 int /*<<< orphan*/  POST_SETATTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XATTR_NAME_IMA ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct inode* FUNC3 (struct dentry*) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ima_policy_flag ; 
 struct integrity_iint_cache* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct dentry *dentry)
{
	struct inode *inode = FUNC3(dentry);
	struct integrity_iint_cache *iint;
	int action;

	if (!(ima_policy_flag & IMA_APPRAISE) || !FUNC0(inode->i_mode)
	    || !(inode->i_opflags & IOP_XATTR))
		return;

	action = FUNC4(inode, MAY_ACCESS, POST_SETATTR);
	if (!action)
		FUNC1(dentry, XATTR_NAME_IMA);
	iint = FUNC5(inode);
	if (iint) {
		FUNC6(IMA_CHANGE_ATTR, &iint->atomic_flags);
		if (!action)
			FUNC2(IMA_UPDATE_XATTR, &iint->atomic_flags);
	}
}