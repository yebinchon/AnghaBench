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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct hfs_find_data {int dummy; } ;
struct TYPE_4__ {int extent_state; } ;
struct TYPE_3__ {int /*<<< orphan*/  ext_tree; } ;

/* Variables and functions */
 int HFSPLUS_EXT_DIRTY ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,struct hfs_find_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct hfs_find_data*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct hfs_find_data*) ; 

__attribute__((used)) static int FUNC5(struct inode *inode)
{
	int res = 0;

	if (FUNC0(inode)->extent_state & HFSPLUS_EXT_DIRTY) {
		struct hfs_find_data fd;

		res = FUNC4(FUNC1(inode->i_sb)->ext_tree, &fd);
		if (res)
			return res;
		res = FUNC2(inode, &fd);
		FUNC3(&fd);
	}
	return res;
}