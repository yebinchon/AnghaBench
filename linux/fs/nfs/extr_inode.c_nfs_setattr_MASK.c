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
struct nfs_fattr {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int (* setattr ) (struct dentry*,struct nfs_fattr*,struct iattr*) ;} ;

/* Variables and functions */
 int ATTR_FILE ; 
 int ATTR_KILL_SGID ; 
 int ATTR_KILL_SUID ; 
 int ATTR_MODE ; 
 int ATTR_OPEN ; 
 int ATTR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NFSIOS_VFSSETATTR ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int NFS_VALID_ATTRS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC3 (struct dentry*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int FUNC5 (struct inode*,scalar_t__) ; 
 struct nfs_fattr* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct inode*,struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int FUNC11 (struct dentry*,struct nfs_fattr*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int) ; 

int
FUNC14(struct dentry *dentry, struct iattr *attr)
{
	struct inode *inode = FUNC3(dentry);
	struct nfs_fattr *fattr;
	int error = 0;

	FUNC8(inode, NFSIOS_VFSSETATTR);

	/* skip mode change if it's just for clearing setuid/setgid */
	if (attr->ia_valid & (ATTR_KILL_SUID | ATTR_KILL_SGID))
		attr->ia_valid &= ~ATTR_MODE;

	if (attr->ia_valid & ATTR_SIZE) {
		FUNC0(!FUNC2(inode->i_mode));

		error = FUNC5(inode, attr->ia_size);
		if (error)
			return error;

		if (attr->ia_size == FUNC4(inode))
			attr->ia_valid &= ~ATTR_SIZE;
	}

	/* Optimization: if the end result is no change, don't RPC */
	attr->ia_valid &= NFS_VALID_ATTRS;
	if ((attr->ia_valid & ~(ATTR_FILE|ATTR_OPEN)) == 0)
		return 0;

	FUNC12(inode);

	/* Write all dirty data */
	if (FUNC2(inode->i_mode))
		FUNC10(inode);

	fattr = FUNC6();
	if (fattr == NULL) {
		error = -ENOMEM;
		goto out;
	}

	error = FUNC1(inode)->setattr(dentry, fattr, attr);
	if (error == 0)
		error = FUNC9(inode, fattr);
	FUNC7(fattr);
out:
	FUNC13(inode, error);
	return error;
}