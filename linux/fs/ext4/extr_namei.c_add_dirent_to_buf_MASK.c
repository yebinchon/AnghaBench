#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {TYPE_1__* i_sb; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; } ;
struct ext4_filename {int dummy; } ;
struct ext4_dir_entry_tail {int dummy; } ;
struct ext4_dir_entry_2 {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_3__ {unsigned int s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*,struct inode*,struct buffer_head*,int /*<<< orphan*/ ,unsigned int,struct ext4_filename*,struct ext4_dir_entry_2**) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct ext4_dir_entry_2*,unsigned int,struct ext4_filename*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 

__attribute__((used)) static int FUNC11(handle_t *handle, struct ext4_filename *fname,
			     struct inode *dir,
			     struct inode *inode, struct ext4_dir_entry_2 *de,
			     struct buffer_head *bh)
{
	unsigned int	blocksize = dir->i_sb->s_blocksize;
	int		csum_size = 0;
	int		err;

	if (FUNC4(inode->i_sb))
		csum_size = sizeof(struct ext4_dir_entry_tail);

	if (!de) {
		err = FUNC2(dir, inode, bh, bh->b_data,
					blocksize - csum_size, fname, &de);
		if (err)
			return err;
	}
	FUNC0(bh, "get_write_access");
	err = FUNC6(handle, bh);
	if (err) {
		FUNC8(dir->i_sb, err);
		return err;
	}

	/* By now the buffer is marked for journaling */
	FUNC5(inode, de, blocksize, fname);

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
	FUNC9(dir);
	FUNC10(dir);
	FUNC7(handle, dir);
	FUNC0(bh, "call ext4_handle_dirty_metadata");
	err = FUNC3(handle, dir, bh);
	if (err)
		FUNC8(dir->i_sb, err);
	return 0;
}