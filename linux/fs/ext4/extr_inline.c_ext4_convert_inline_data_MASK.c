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
struct ext4_iloc {int /*<<< orphan*/ * bh; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_HT_WRITE_PAGE ; 
 int /*<<< orphan*/  EXT4_STATE_MAY_INLINE_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct inode*,struct ext4_iloc*) ; 
 int FUNC5 (struct inode*,struct ext4_iloc*) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC7 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int*) ; 
 int FUNC11 (struct inode*) ; 

int FUNC12(struct inode *inode)
{
	int error, needed_blocks, no_expand;
	handle_t *handle;
	struct ext4_iloc iloc;

	if (!FUNC6(inode)) {
		FUNC3(inode, EXT4_STATE_MAY_INLINE_DATA);
		return 0;
	}

	needed_blocks = FUNC11(inode);

	iloc.bh = NULL;
	error = FUNC5(inode, &iloc);
	if (error)
		return error;

	handle = FUNC7(inode, EXT4_HT_WRITE_PAGE, needed_blocks);
	if (FUNC0(handle)) {
		error = FUNC1(handle);
		goto out_free;
	}

	FUNC9(inode, &no_expand);
	if (FUNC6(inode))
		error = FUNC4(handle, inode, &iloc);
	FUNC10(inode, &no_expand);
	FUNC8(handle);
out_free:
	FUNC2(iloc.bh);
	return error;
}