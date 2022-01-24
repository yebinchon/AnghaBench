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
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FI_ATOMIC_REVOKE_REQUEST ; 
 int /*<<< orphan*/  FI_VOLATILE_FILE ; 
 int /*<<< orphan*/  LLONG_MAX ; 
 int /*<<< orphan*/  REQ_TIME ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC7 (struct file*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct file*) ; 
 int FUNC12 (struct file*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 

__attribute__((used)) static int FUNC14(struct file *filp)
{
	struct inode *inode = FUNC7(filp);
	int ret;

	if (!FUNC9(inode))
		return -EACCES;

	ret = FUNC12(filp);
	if (ret)
		return ret;

	FUNC8(inode);

	if (FUNC4(inode))
		FUNC3(inode);
	if (FUNC5(inode)) {
		FUNC1(inode, FI_VOLATILE_FILE);
		FUNC13(inode);
		ret = FUNC2(filp, 0, LLONG_MAX, 0, true);
	}

	FUNC1(inode, FI_ATOMIC_REVOKE_REQUEST);

	FUNC10(inode);

	FUNC11(filp);
	FUNC6(FUNC0(inode), REQ_TIME);
	return ret;
}