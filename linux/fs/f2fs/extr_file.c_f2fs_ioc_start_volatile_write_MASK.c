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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FI_VOLATILE_FILE ; 
 int /*<<< orphan*/  REQ_TIME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct file*) ; 
 int FUNC10 (struct file*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 

__attribute__((used)) static int FUNC14(struct file *filp)
{
	struct inode *inode = FUNC5(filp);
	int ret;

	if (!FUNC7(inode))
		return -EACCES;

	if (!FUNC1(inode->i_mode))
		return -EINVAL;

	ret = FUNC10(filp);
	if (ret)
		return ret;

	FUNC6(inode);

	if (FUNC3(inode))
		goto out;

	ret = FUNC2(inode);
	if (ret)
		goto out;

	FUNC12(inode);
	FUNC13(inode);

	FUNC11(inode, FI_VOLATILE_FILE);
	FUNC4(FUNC0(inode), REQ_TIME);
out:
	FUNC8(inode);
	FUNC9(filp);
	return ret;
}