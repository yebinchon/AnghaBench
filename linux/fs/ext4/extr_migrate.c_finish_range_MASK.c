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
struct migrate_struct {int /*<<< orphan*/  first_pblock; scalar_t__ first_block; scalar_t__ last_block; } ;
struct inode {int dummy; } ;
struct ext4_extent {int /*<<< orphan*/  ee_len; int /*<<< orphan*/  ee_block; } ;
struct ext4_ext_path {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_data_sem; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_RESERVE_TRANS_BLOCKS ; 
 scalar_t__ FUNC1 (struct ext4_ext_path*) ; 
 int FUNC2 (struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct inode*,scalar_t__,struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC7 (struct ext4_ext_path*) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path**,struct ext4_extent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ext4_extent*,int /*<<< orphan*/ ) ; 
 struct ext4_ext_path* FUNC10 (struct inode*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(handle_t *handle, struct inode *inode,
				struct migrate_struct *lb)

{
	int retval = 0, needed;
	struct ext4_extent newext;
	struct ext4_ext_path *path;
	if (lb->first_pblock == 0)
		return 0;

	/* Add the extent to temp inode*/
	newext.ee_block = FUNC4(lb->first_block);
	newext.ee_len   = FUNC3(lb->last_block - lb->first_block + 1);
	FUNC9(&newext, lb->first_pblock);
	/* Locking only for convinience since we are operating on temp inode */
	FUNC5(&FUNC0(inode)->i_data_sem);
	path = FUNC10(inode, lb->first_block, NULL, 0);
	if (FUNC1(path)) {
		retval = FUNC2(path);
		path = NULL;
		goto err_out;
	}

	/*
	 * Calculate the credit needed to inserting this extent
	 * Since we are doing this in loop we may accumalate extra
	 * credit. But below we try to not accumalate too much
	 * of them by restarting the journal.
	 */
	needed = FUNC6(inode,
		    lb->last_block - lb->first_block + 1, path);

	/*
	 * Make sure the credit we accumalated is not really high
	 */
	if (needed && FUNC11(handle,
						EXT4_RESERVE_TRANS_BLOCKS)) {
		FUNC15((&FUNC0(inode)->i_data_sem));
		retval = FUNC13(handle, needed);
		FUNC5((&FUNC0(inode)->i_data_sem));
		if (retval)
			goto err_out;
	} else if (needed) {
		retval = FUNC12(handle, needed);
		if (retval) {
			/*
			 * IF not able to extend the journal restart the journal
			 */
			FUNC15((&FUNC0(inode)->i_data_sem));
			retval = FUNC13(handle, needed);
			FUNC5((&FUNC0(inode)->i_data_sem));
			if (retval)
				goto err_out;
		}
	}
	retval = FUNC8(handle, inode, &path, &newext, 0);
err_out:
	FUNC15((&FUNC0(inode)->i_data_sem));
	FUNC7(path);
	FUNC14(path);
	lb->first_pblock = 0;
	return retval;
}