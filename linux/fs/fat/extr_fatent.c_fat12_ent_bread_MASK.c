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
struct super_block {int s_blocksize; } ;
struct fat_entry {int nr_bhs; int /*<<< orphan*/  fat_inode; struct buffer_head** bhs; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ sector_t ;
typedef  int /*<<< orphan*/  llu ;
struct TYPE_2__ {scalar_t__ fat_start; int /*<<< orphan*/  fat_inode; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  KERN_ERR ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct fat_entry*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC5 (struct super_block*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct super_block *sb, struct fat_entry *fatent,
			   int offset, sector_t blocknr)
{
	struct buffer_head **bhs = fatent->bhs;

	FUNC1(blocknr < FUNC0(sb)->fat_start);
	fatent->fat_inode = FUNC0(sb)->fat_inode;

	bhs[0] = FUNC5(sb, blocknr);
	if (!bhs[0])
		goto err;

	if ((offset + 1) < sb->s_blocksize)
		fatent->nr_bhs = 1;
	else {
		/* This entry is block boundary, it needs the next block */
		blocknr++;
		bhs[1] = FUNC5(sb, blocknr);
		if (!bhs[1])
			goto err_brelse;
		fatent->nr_bhs = 2;
	}
	FUNC3(fatent, offset);
	return 0;

err_brelse:
	FUNC2(bhs[0]);
err:
	FUNC4(sb, KERN_ERR, "FAT read failed (blocknr %llu)", (llu)blocknr);
	return -EIO;
}