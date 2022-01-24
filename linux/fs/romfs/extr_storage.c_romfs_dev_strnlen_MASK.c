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
struct super_block {scalar_t__ s_bdev; scalar_t__ s_mtd; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*,unsigned long,size_t) ; 
 size_t FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,unsigned long,size_t) ; 

ssize_t FUNC3(struct super_block *sb,
			  unsigned long pos, size_t maxlen)
{
	size_t limit;

	limit = FUNC1(sb);
	if (pos >= limit)
		return -EIO;
	if (maxlen > limit - pos)
		maxlen = limit - pos;

#ifdef CONFIG_ROMFS_ON_MTD
	if (sb->s_mtd)
		return romfs_mtd_strnlen(sb, pos, maxlen);
#endif
#ifdef CONFIG_ROMFS_ON_BLOCK
	if (sb->s_bdev)
		return romfs_blk_strnlen(sb, pos, maxlen);
#endif
	return -EIO;
}