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
typedef  int /*<<< orphan*/  umode_t ;
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct inode* FUNC0 (int) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int) ; 

__attribute__((used)) static struct inode *FUNC7(struct inode *dir, umode_t mode)
{
	struct inode *inode;
	int status;

	inode = FUNC5(dir->i_sb);
	if (!inode) {
		FUNC4(ML_ERROR, "new_inode failed!\n");
		return FUNC0(-ENOMEM);
	}

	/* populate as many fields early on as possible - many of
	 * these are used by the support functions here and in
	 * callers. */
	if (FUNC1(mode))
		FUNC6(inode, 2);
	FUNC3(inode, dir, mode);
	status = FUNC2(inode);
	if (status)
		return FUNC0(status);

	return inode;
}