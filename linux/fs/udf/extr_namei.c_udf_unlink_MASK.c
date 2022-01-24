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
struct udf_fileident_bh {scalar_t__ sbh; scalar_t__ ebh; } ;
struct kernel_lb_addr {int dummy; } ;
struct inode {scalar_t__ i_ino; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_nlink; int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  extLocation; } ;
struct fileIdentDesc {TYPE_1__ icb; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;

/* Variables and functions */
 int EIO ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct fileIdentDesc*) ; 
 int FUNC1 (struct fileIdentDesc*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 struct kernel_lb_addr FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct inode*,struct fileIdentDesc*,struct udf_fileident_bh*,struct fileIdentDesc*) ; 
 struct fileIdentDesc* FUNC11 (struct inode*,int /*<<< orphan*/ *,struct udf_fileident_bh*,struct fileIdentDesc*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,struct kernel_lb_addr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct inode *dir, struct dentry *dentry)
{
	int retval;
	struct inode *inode = FUNC4(dentry);
	struct udf_fileident_bh fibh;
	struct fileIdentDesc *fi;
	struct fileIdentDesc cfi;
	struct kernel_lb_addr tloc;

	retval = -ENOENT;
	fi = FUNC11(dir, &dentry->d_name, &fibh, &cfi);

	if (FUNC0(fi)) {
		if (fi)
			retval = FUNC1(fi);
		goto out;
	}

	retval = -EIO;
	tloc = FUNC6(cfi.icb.extLocation);
	if (FUNC12(dir->i_sb, &tloc, 0) != inode->i_ino)
		goto end_unlink;

	if (!inode->i_nlink) {
		FUNC9("Deleting nonexistent file (%lu), %u\n",
			  inode->i_ino, inode->i_nlink);
		FUNC8(inode, 1);
	}
	retval = FUNC10(dir, fi, &fibh, &cfi);
	if (retval)
		goto end_unlink;
	dir->i_ctime = dir->i_mtime = FUNC3(dir);
	FUNC7(dir);
	FUNC5(inode);
	inode->i_ctime = dir->i_ctime;
	retval = 0;

end_unlink:
	if (fibh.sbh != fibh.ebh)
		FUNC2(fibh.ebh);
	FUNC2(fibh.sbh);

out:
	return retval;
}