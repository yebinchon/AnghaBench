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
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; } ;
struct ext4_iloc {int /*<<< orphan*/  bh; } ;
struct ext4_filename {int dummy; } ;
struct ext4_dir_entry_2 {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*,struct inode*,int /*<<< orphan*/ ,void*,int,struct ext4_filename*,struct ext4_dir_entry_2**) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct ext4_dir_entry_2*,int,struct ext4_filename*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 

__attribute__((used)) static int FUNC8(handle_t *handle,
				     struct ext4_filename *fname,
				     struct inode *dir,
				     struct inode *inode,
				     struct ext4_iloc *iloc,
				     void *inline_start, int inline_size)
{
	int		err;
	struct ext4_dir_entry_2 *de;

	err = FUNC2(dir, inode, iloc->bh, inline_start,
				inline_size, fname, &de);
	if (err)
		return err;

	FUNC0(iloc->bh, "get_write_access");
	err = FUNC4(handle, iloc->bh);
	if (err)
		return err;
	FUNC3(inode, de, inline_size, fname);

	FUNC5(dir, iloc->bh, inline_start, inline_size);

	/*
	 * XXX shouldn't update any times until successful
	 * completion of syscall, but too many callers depend
	 * on this.
	 *
	 * XXX similarly, too many callers depend on
	 * ext4_new_inode() setting the times, but error
	 * recovery deletes the inode, so the worst that can
	 * happen is that the times are slightly out of date
	 * and/or different from the directory change time.
	 */
	dir->i_mtime = dir->i_ctime = FUNC1(dir);
	FUNC6(dir);
	FUNC7(dir);
	return 1;
}