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

/* Variables and functions */
 int /*<<< orphan*/  COMMIT_Dirty ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct inode *inode, int flags)
{
	static int noisy = 5;

	if (FUNC0(inode)) {
		if (!FUNC3(inode->i_mode) && noisy) {
			/* kernel allows writes to devices on read-only
			 * partitions and may try to mark inode dirty
			 */
			FUNC1("jfs_dirty_inode called on read-only volume");
			FUNC1("Is remount racy?");
			noisy--;
		}
		return;
	}

	FUNC2(COMMIT_Dirty, inode);
}