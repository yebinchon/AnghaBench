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
struct inode {TYPE_1__* i_sb; } ;
struct ext4_dir_entry_tail {int dummy; } ;
struct ext4_dir_entry_2 {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_3__ {int /*<<< orphan*/  s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int ENOENT ; 
 int FUNC1 (int /*<<< orphan*/ *,struct inode*,struct ext4_dir_entry_2*,struct buffer_head*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct inode*,struct ext4_dir_entry_2*,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(handle_t *handle,
			     struct inode *dir,
			     struct ext4_dir_entry_2 *de_del,
			     struct buffer_head *bh)
{
	int err, csum_size = 0;

	if (FUNC4(dir)) {
		int has_inline_data = 1;
		err = FUNC1(handle, dir, de_del, bh,
					       &has_inline_data);
		if (has_inline_data)
			return err;
	}

	if (FUNC5(dir->i_sb))
		csum_size = sizeof(struct ext4_dir_entry_tail);

	FUNC0(bh, "get_write_access");
	err = FUNC6(handle, bh);
	if (FUNC8(err))
		goto out;

	err = FUNC2(handle, dir, de_del,
					bh, bh->b_data,
					dir->i_sb->s_blocksize, csum_size);
	if (err)
		goto out;

	FUNC0(bh, "call ext4_handle_dirty_metadata");
	err = FUNC3(handle, dir, bh);
	if (FUNC8(err))
		goto out;

	return 0;
out:
	if (err != -ENOENT)
		FUNC7(dir->i_sb, err);
	return err;
}