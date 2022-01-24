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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_iloc {int /*<<< orphan*/  bh; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct inode*,struct ext4_iloc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(handle_t *handle,
			 struct inode *inode, struct ext4_iloc *iloc)
{
	int err = 0;

	if (FUNC7(FUNC3(FUNC0(inode->i_sb)))) {
		FUNC6(iloc->bh);
		return -EIO;
	}
	if (FUNC1(inode))
		FUNC5(inode);

	/* the do_update_inode consumes one bh->b_count */
	FUNC4(iloc->bh);

	/* ext4_do_update_inode() does jbd2_journal_dirty_metadata */
	err = FUNC2(handle, inode, iloc);
	FUNC6(iloc->bh);
	return err;
}