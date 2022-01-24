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
struct inode {scalar_t__ i_ino; scalar_t__ i_size; int /*<<< orphan*/  i_sb; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; int /*<<< orphan*/  ia_gid; int /*<<< orphan*/  ia_uid; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {scalar_t__ sb_root; } ;

/* Variables and functions */
 int ATTR_GID ; 
 int ATTR_SIZE ; 
 int ATTR_UID ; 
 int EINVAL ; 
 struct inode* FUNC0 (struct dentry*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int FUNC9 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,struct iattr*) ; 
 int FUNC11 (struct dentry*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,scalar_t__) ; 

int FUNC13(struct dentry *dentry, struct iattr *attr)
{
	struct inode *inode = FUNC0(dentry);
	int error = -EINVAL;

	FUNC3(inode->i_sb);
	if (inode->i_ino == FUNC4(inode->i_sb)->sb_root)
		goto out_unlock;
	if ((attr->ia_valid & ATTR_UID) &&
	    FUNC2(&init_user_ns, attr->ia_uid) >= 0x10000)
		goto out_unlock;
	if ((attr->ia_valid & ATTR_GID) &&
	    FUNC1(&init_user_ns, attr->ia_gid) >= 0x10000)
		goto out_unlock;
	if ((attr->ia_valid & ATTR_SIZE) && attr->ia_size > inode->i_size)
		goto out_unlock;

	error = FUNC11(dentry, attr);
	if (error)
		goto out_unlock;

	if ((attr->ia_valid & ATTR_SIZE) &&
	    attr->ia_size != FUNC8(inode)) {
		error = FUNC9(inode, attr->ia_size);
		if (error)
			goto out_unlock;

		FUNC12(inode, attr->ia_size);
		FUNC5(inode);
	}

	FUNC10(inode, attr);

	FUNC7(inode);

 out_unlock:
	FUNC6(inode->i_sb);
	return error;
}