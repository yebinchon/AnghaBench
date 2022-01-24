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
struct inode {struct super_block* i_sb; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; int /*<<< orphan*/  ia_mode; int /*<<< orphan*/  ia_gid; int /*<<< orphan*/  ia_uid; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_gid; int /*<<< orphan*/  s_uid; } ;

/* Variables and functions */
 int ATTR_GID ; 
 int ATTR_MODE ; 
 int ATTR_SIZE ; 
 int ATTR_UID ; 
 int EPERM ; 
 int /*<<< orphan*/  UDF_FLAG_GID_SET ; 
 int /*<<< orphan*/  UDF_FLAG_UID_SET ; 
 scalar_t__ FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 struct inode* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct iattr*) ; 
 int FUNC7 (struct dentry*,struct iattr*) ; 
 int FUNC8 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct dentry *dentry, struct iattr *attr)
{
	struct inode *inode = FUNC2(dentry);
	struct super_block *sb = inode->i_sb;
	int error;

	error = FUNC7(dentry, attr);
	if (error)
		return error;

	if ((attr->ia_valid & ATTR_UID) &&
	    FUNC0(sb, UDF_FLAG_UID_SET) &&
	    !FUNC10(attr->ia_uid, FUNC1(sb)->s_uid))
		return -EPERM;
	if ((attr->ia_valid & ATTR_GID) &&
	    FUNC0(sb, UDF_FLAG_GID_SET) &&
	    !FUNC3(attr->ia_gid, FUNC1(sb)->s_gid))
		return -EPERM;

	if ((attr->ia_valid & ATTR_SIZE) &&
	    attr->ia_size != FUNC4(inode)) {
		error = FUNC8(inode, attr->ia_size);
		if (error)
			return error;
	}

	if (attr->ia_valid & ATTR_MODE)
		FUNC9(inode, attr->ia_mode);

	FUNC6(inode, attr);
	FUNC5(inode);
	return 0;
}