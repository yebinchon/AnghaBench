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
typedef  int u64 ;
struct super_block {struct squashfs_sb_info* s_fs_info; } ;
struct squashfs_sb_info {int /*<<< orphan*/ * inode_lookup_table; } ;
typedef  int /*<<< orphan*/  ino ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 long long FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct super_block*,int /*<<< orphan*/ *,int*,int*,int) ; 

__attribute__((used)) static long long FUNC5(struct super_block *sb, int ino_num)
{
	struct squashfs_sb_info *msblk = sb->s_fs_info;
	int blk = FUNC0(ino_num - 1);
	int offset = FUNC1(ino_num - 1);
	u64 start = FUNC3(msblk->inode_lookup_table[blk]);
	__le64 ino;
	int err;

	FUNC2("Entered squashfs_inode_lookup, inode_number = %d\n", ino_num);

	err = FUNC4(sb, &ino, &start, &offset, sizeof(ino));
	if (err < 0)
		return err;

	FUNC2("squashfs_inode_lookup, inode = 0x%llx\n",
		(u64) FUNC3(ino));

	return FUNC3(ino);
}