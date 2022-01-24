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
struct inode {int i_state; int /*<<< orphan*/  i_lock; int /*<<< orphan*/  i_count; scalar_t__ i_nlink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int I_CLEAR ; 
 int I_DIRTY_TIME ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 

void FUNC7(struct inode *inode)
{
	if (!inode)
		return;
	FUNC0(inode->i_state & I_CLEAR);
retry:
	if (FUNC1(&inode->i_count, &inode->i_lock)) {
		if (inode->i_nlink && (inode->i_state & I_DIRTY_TIME)) {
			FUNC2(&inode->i_count);
			FUNC5(&inode->i_lock);
			FUNC6(inode);
			FUNC4(inode);
			goto retry;
		}
		FUNC3(inode);
	}
}