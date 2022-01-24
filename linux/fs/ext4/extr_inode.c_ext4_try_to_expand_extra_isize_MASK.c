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
struct ext4_iloc {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENOSPC ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT4_STATE_NO_EXPAND ; 
 int FUNC1 (struct inode*,unsigned int,struct ext4_iloc*,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct inode*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct inode *inode,
					  unsigned int new_extra_isize,
					  struct ext4_iloc iloc,
					  handle_t *handle)
{
	int no_expand;
	int error;

	if (FUNC3(inode, EXT4_STATE_NO_EXPAND))
		return -EOVERFLOW;

	/*
	 * In nojournal mode, we can immediately attempt to expand
	 * the inode.  When journaled, we first need to obtain extra
	 * buffer credits since we may write into the EA block
	 * with this same handle. If journal_extend fails, then it will
	 * only result in a minor loss of functionality for that inode.
	 * If this is felt to be critical, then e2fsck should be run to
	 * force a large enough s_min_extra_isize.
	 */
	if (FUNC2(handle) &&
	    FUNC6(handle,
				FUNC0(inode->i_sb)) != 0)
		return -ENOSPC;

	if (FUNC4(inode, &no_expand) == 0)
		return -EBUSY;

	error = FUNC1(inode, new_extra_isize, &iloc,
					  handle, &no_expand);
	FUNC5(inode, &no_expand);

	return error;
}