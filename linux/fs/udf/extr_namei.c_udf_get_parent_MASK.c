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
struct qstr {int dummy; } ;
struct kernel_lb_addr {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  extLocation; } ;
struct fileIdentDesc {TYPE_1__ icb; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  EACCES ; 
 struct dentry* FUNC0 (struct inode*) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 struct qstr FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 struct dentry* FUNC6 (struct inode*) ; 
 struct kernel_lb_addr FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct qstr*,struct udf_fileident_bh*,struct fileIdentDesc*) ; 
 struct inode* FUNC9 (int /*<<< orphan*/ ,struct kernel_lb_addr*) ; 

__attribute__((used)) static struct dentry *FUNC10(struct dentry *child)
{
	struct kernel_lb_addr tloc;
	struct inode *inode = NULL;
	struct qstr dotdot = FUNC3("..", 2);
	struct fileIdentDesc cfi;
	struct udf_fileident_bh fibh;

	if (!FUNC8(FUNC5(child), &dotdot, &fibh, &cfi))
		return FUNC1(-EACCES);

	if (fibh.sbh != fibh.ebh)
		FUNC4(fibh.ebh);
	FUNC4(fibh.sbh);

	tloc = FUNC7(cfi.icb.extLocation);
	inode = FUNC9(child->d_sb, &tloc);
	if (FUNC2(inode))
		return FUNC0(inode);

	return FUNC6(inode);
}