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
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FAULT_TRUNCATE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

int FUNC15(struct inode *inode)
{
	int err;

	if (FUNC14(FUNC6(FUNC0(inode))))
		return -EIO;

	if (!(FUNC3(inode->i_mode) || FUNC1(inode->i_mode) ||
				FUNC2(inode->i_mode)))
		return 0;

	FUNC13(inode);

	if (FUNC12(FUNC0(inode), FAULT_TRUNCATE)) {
		FUNC9(FAULT_TRUNCATE);
		return -EIO;
	}

	/* we should check inline_data size */
	if (!FUNC8(inode)) {
		err = FUNC5(inode);
		if (err)
			return err;
	}

	err = FUNC10(inode, FUNC11(inode), true);
	if (err)
		return err;

	inode->i_mtime = inode->i_ctime = FUNC4(inode);
	FUNC7(inode, false);
	return 0;
}