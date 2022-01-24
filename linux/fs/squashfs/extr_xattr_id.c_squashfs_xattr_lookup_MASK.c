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
typedef  void* u64 ;
struct super_block {struct squashfs_sb_info* s_fs_info; } ;
struct squashfs_xattr_id {int /*<<< orphan*/  count; int /*<<< orphan*/  size; int /*<<< orphan*/  xattr; } ;
struct squashfs_sb_info {int /*<<< orphan*/ * xattr_id_table; } ;
typedef  int /*<<< orphan*/  id ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct super_block*,struct squashfs_xattr_id*,void**,int*,int) ; 

int FUNC5(struct super_block *sb, unsigned int index,
		int *count, unsigned int *size, unsigned long long *xattr)
{
	struct squashfs_sb_info *msblk = sb->s_fs_info;
	int block = FUNC0(index);
	int offset = FUNC1(index);
	u64 start_block = FUNC3(msblk->xattr_id_table[block]);
	struct squashfs_xattr_id id;
	int err;

	err = FUNC4(sb, &id, &start_block, &offset,
							sizeof(id));
	if (err < 0)
		return err;

	*xattr = FUNC3(id.xattr);
	*size = FUNC2(id.size);
	*count = FUNC2(id.count);
	return 0;
}