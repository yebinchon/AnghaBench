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
struct udf_fileident_bh {scalar_t__ sbh; scalar_t__ ebh; } ;
struct kernel_lb_addr {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  extLocation; } ;
struct inode {int /*<<< orphan*/  i_sb; TYPE_1__ icb; } ;
struct fileIdentDesc {int /*<<< orphan*/  i_sb; TYPE_1__ icb; } ;
struct TYPE_4__ {scalar_t__ len; } ;
struct dentry {TYPE_2__ d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENAMETOOLONG ; 
 struct dentry* FUNC0 (struct inode*) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ UDF_NAME_LEN ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct dentry* FUNC4 (struct inode*,struct dentry*) ; 
 struct kernel_lb_addr FUNC5 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC6 (struct inode*,TYPE_2__*,struct udf_fileident_bh*,struct inode*) ; 
 struct inode* FUNC7 (int /*<<< orphan*/ ,struct kernel_lb_addr*) ; 

__attribute__((used)) static struct dentry *FUNC8(struct inode *dir, struct dentry *dentry,
				 unsigned int flags)
{
	struct inode *inode = NULL;
	struct fileIdentDesc cfi;
	struct udf_fileident_bh fibh;
	struct fileIdentDesc *fi;

	if (dentry->d_name.len > UDF_NAME_LEN)
		return FUNC1(-ENAMETOOLONG);

	fi = FUNC6(dir, &dentry->d_name, &fibh, &cfi);
	if (FUNC2(fi))
		return FUNC0(fi);

	if (fi) {
		struct kernel_lb_addr loc;

		if (fibh.sbh != fibh.ebh)
			FUNC3(fibh.ebh);
		FUNC3(fibh.sbh);

		loc = FUNC5(cfi.icb.extLocation);
		inode = FUNC7(dir->i_sb, &loc);
		if (FUNC2(inode))
			return FUNC0(inode);
	}

	return FUNC4(inode, dentry);
}