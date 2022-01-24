#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  umode_t ;
struct inode {int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct iattr {int /*<<< orphan*/  ia_valid; int /*<<< orphan*/  ia_mode; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_4__ {int (* mknod ) (struct inode*,struct dentry*,struct iattr*,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  s_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_MODE ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dentry*) ; 
 int FUNC3 (struct inode*,struct dentry*,struct iattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct dentry*,int) ; 

int
FUNC6(struct inode *dir, struct dentry *dentry, umode_t mode, dev_t rdev)
{
	struct iattr attr;
	int status;

	FUNC2(VFS, "NFS: mknod(%s/%lu), %pd\n",
			dir->i_sb->s_id, dir->i_ino, dentry);

	attr.ia_mode = mode;
	attr.ia_valid = ATTR_MODE;

	FUNC4(dir, dentry);
	status = FUNC0(dir)->mknod(dir, dentry, &attr, rdev);
	FUNC5(dir, dentry, status);
	if (status != 0)
		goto out_err;
	return 0;
out_err:
	FUNC1(dentry);
	return status;
}