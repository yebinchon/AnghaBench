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
struct super_block {int dummy; } ;
struct fatent_operations {int /*<<< orphan*/  (* ent_set_ptr ) (struct fat_entry*,int) ;} ;
struct fat_entry {int nr_bhs; int /*<<< orphan*/ * bhs; int /*<<< orphan*/  fat_inode; } ;
typedef  scalar_t__ sector_t ;
typedef  int /*<<< orphan*/  llu ;
struct TYPE_2__ {scalar_t__ fat_start; int /*<<< orphan*/  fat_inode; struct fatent_operations* fatent_ops; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  KERN_ERR ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct fat_entry*,int) ; 

__attribute__((used)) static int FUNC5(struct super_block *sb, struct fat_entry *fatent,
			 int offset, sector_t blocknr)
{
	const struct fatent_operations *ops = FUNC0(sb)->fatent_ops;

	FUNC1(blocknr < FUNC0(sb)->fat_start);
	fatent->fat_inode = FUNC0(sb)->fat_inode;
	fatent->bhs[0] = FUNC3(sb, blocknr);
	if (!fatent->bhs[0]) {
		FUNC2(sb, KERN_ERR, "FAT read failed (blocknr %llu)",
		       (llu)blocknr);
		return -EIO;
	}
	fatent->nr_bhs = 1;
	ops->ent_set_ptr(fatent, offset);
	return 0;
}