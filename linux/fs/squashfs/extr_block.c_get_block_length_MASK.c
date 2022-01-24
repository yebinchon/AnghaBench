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
struct squashfs_sb_info {int devblksize; } ;
struct buffer_head {scalar_t__* b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 struct buffer_head* FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct buffer_head *FUNC2(struct super_block *sb,
			u64 *cur_index, int *offset, int *length)
{
	struct squashfs_sb_info *msblk = sb->s_fs_info;
	struct buffer_head *bh;

	bh = FUNC1(sb, *cur_index);
	if (bh == NULL)
		return NULL;

	if (msblk->devblksize - *offset == 1) {
		*length = (unsigned char) bh->b_data[*offset];
		FUNC0(bh);
		bh = FUNC1(sb, ++(*cur_index));
		if (bh == NULL)
			return NULL;
		*length |= (unsigned char) bh->b_data[0] << 8;
		*offset = 1;
	} else {
		*length = (unsigned char) bh->b_data[*offset] |
			(unsigned char) bh->b_data[*offset + 1] << 8;
		*offset += 2;

		if (*offset == msblk->devblksize) {
			FUNC0(bh);
			bh = FUNC1(sb, ++(*cur_index));
			if (bh == NULL)
				return NULL;
			*offset = 0;
		}
	}

	return bh;
}