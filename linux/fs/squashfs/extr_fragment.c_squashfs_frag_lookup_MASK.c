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
typedef  int /*<<< orphan*/  u64 ;
struct super_block {struct squashfs_sb_info* s_fs_info; } ;
struct squashfs_sb_info {unsigned int fragments; int /*<<< orphan*/ * fragment_index; } ;
struct squashfs_fragment_entry {int /*<<< orphan*/  size; int /*<<< orphan*/  start_block; } ;
typedef  int /*<<< orphan*/  fragment_entry ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct super_block*,struct squashfs_fragment_entry*,int /*<<< orphan*/ *,int*,int) ; 

int FUNC5(struct super_block *sb, unsigned int fragment,
				u64 *fragment_block)
{
	struct squashfs_sb_info *msblk = sb->s_fs_info;
	int block, offset, size;
	struct squashfs_fragment_entry fragment_entry;
	u64 start_block;

	if (fragment >= msblk->fragments)
		return -EIO;
	block = FUNC0(fragment);
	offset = FUNC1(fragment);

	start_block = FUNC2(msblk->fragment_index[block]);

	size = FUNC4(sb, &fragment_entry, &start_block,
					&offset, sizeof(fragment_entry));
	if (size < 0)
		return size;

	*fragment_block = FUNC2(fragment_entry.start_block);
	return FUNC3(fragment_entry.size);
}