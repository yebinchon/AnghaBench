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
struct inode {TYPE_1__* i_sb; } ;
struct ext4_dir_entry_2 {int /*<<< orphan*/  rec_len; scalar_t__ inode; } ;
struct buffer_head {int /*<<< orphan*/  b_size; int /*<<< orphan*/  b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {unsigned int s_blocksize; } ;

/* Variables and functions */
 int EFSCORRUPTED ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct inode*,int /*<<< orphan*/ *,struct ext4_dir_entry_2*,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ext4_dir_entry_2* FUNC1 (struct ext4_dir_entry_2*,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 

int FUNC5(handle_t *handle,
			      struct inode *dir,
			      struct ext4_dir_entry_2 *de_del,
			      struct buffer_head *bh,
			      void *entry_buf,
			      int buf_size,
			      int csum_size)
{
	struct ext4_dir_entry_2 *de, *pde;
	unsigned int blocksize = dir->i_sb->s_blocksize;
	int i;

	i = 0;
	pde = NULL;
	de = (struct ext4_dir_entry_2 *)entry_buf;
	while (i < buf_size - csum_size) {
		if (FUNC0(dir, NULL, de, bh,
					 bh->b_data, bh->b_size, i))
			return -EFSCORRUPTED;
		if (de == de_del)  {
			if (pde)
				pde->rec_len = FUNC3(
					FUNC2(pde->rec_len,
							       blocksize) +
					FUNC2(de->rec_len,
							       blocksize),
					blocksize);
			else
				de->inode = 0;
			FUNC4(dir);
			return 0;
		}
		i += FUNC2(de->rec_len, blocksize);
		pde = de;
		de = FUNC1(de, blocksize);
	}
	return -ENOENT;
}