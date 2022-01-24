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
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FI_ATOMIC_REVOKE_REQUEST ; 
 int /*<<< orphan*/  LLONG_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct inode*) ; 
 int FUNC4 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 struct inode* FUNC8 (struct file*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 scalar_t__ FUNC12 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct file*) ; 
 int FUNC14 (struct file*) ; 

__attribute__((used)) static int FUNC15(struct file *filp)
{
	struct inode *inode = FUNC8(filp);
	int ret;

	if (!FUNC10(inode))
		return -EACCES;

	ret = FUNC14(filp);
	if (ret)
		return ret;

	FUNC2(FUNC0(inode), true);

	FUNC9(inode);

	if (FUNC7(inode)) {
		ret = -EINVAL;
		goto err_out;
	}

	if (FUNC6(inode)) {
		ret = FUNC3(inode);
		if (ret)
			goto err_out;

		ret = FUNC4(filp, 0, LLONG_MAX, 0, true);
		if (!ret)
			FUNC5(inode);
	} else {
		ret = FUNC4(filp, 0, LLONG_MAX, 1, false);
	}
err_out:
	if (FUNC12(inode, FI_ATOMIC_REVOKE_REQUEST)) {
		FUNC1(inode, FI_ATOMIC_REVOKE_REQUEST);
		ret = -EINVAL;
	}
	FUNC11(inode);
	FUNC13(filp);
	return ret;
}