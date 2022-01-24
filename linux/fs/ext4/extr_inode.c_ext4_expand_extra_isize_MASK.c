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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT4_HT_INODE ; 
 int /*<<< orphan*/  EXT4_STATE_NO_EXPAND ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct inode*,unsigned int,struct ext4_iloc*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct inode*,struct ext4_iloc*) ; 
 scalar_t__ FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int*) ; 

int FUNC13(struct inode *inode,
			    unsigned int new_extra_isize,
			    struct ext4_iloc *iloc)
{
	handle_t *handle;
	int no_expand;
	int error, rc;

	if (FUNC10(inode, EXT4_STATE_NO_EXPAND)) {
		FUNC5(iloc->bh);
		return -EOVERFLOW;
	}

	handle = FUNC7(inode, EXT4_HT_INODE,
				    FUNC1(inode->i_sb));
	if (FUNC2(handle)) {
		error = FUNC3(handle);
		FUNC5(iloc->bh);
		return error;
	}

	FUNC11(inode, &no_expand);

	FUNC0(iloc->bh, "get_write_access");
	error = FUNC6(handle, iloc->bh);
	if (error) {
		FUNC5(iloc->bh);
		goto out_stop;
	}

	error = FUNC4(inode, new_extra_isize, iloc,
					  handle, &no_expand);

	rc = FUNC9(handle, inode, iloc);
	if (!error)
		error = rc;

	FUNC12(inode, &no_expand);
out_stop:
	FUNC8(handle);
	return error;
}