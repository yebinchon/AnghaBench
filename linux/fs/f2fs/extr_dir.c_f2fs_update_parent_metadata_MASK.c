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
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_mode; } ;
struct TYPE_2__ {unsigned int i_current_depth; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FI_INC_LINK ; 
 int /*<<< orphan*/  FI_NEW_INODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int) ; 
 scalar_t__ FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 

void FUNC8(struct inode *dir, struct inode *inode,
						unsigned int current_depth)
{
	if (inode && FUNC7(inode, FI_NEW_INODE)) {
		if (FUNC1(inode->i_mode))
			FUNC5(dir, true);
		FUNC2(inode, FI_NEW_INODE);
	}
	dir->i_mtime = dir->i_ctime = FUNC3(dir);
	FUNC6(dir, false);

	if (FUNC0(dir)->i_current_depth != current_depth)
		FUNC4(dir, current_depth);

	if (inode && FUNC7(inode, FI_INC_LINK))
		FUNC2(inode, FI_INC_LINK);
}