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
struct f2fs_sb_info {int /*<<< orphan*/  alloc_valid_block_count; int /*<<< orphan*/  total_valid_inode_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct f2fs_sb_info *sbi)
{
	int err;

	err = FUNC1(&sbi->alloc_valid_block_count, 0, GFP_KERNEL);
	if (err)
		return err;

	err = FUNC1(&sbi->total_valid_inode_count, 0,
								GFP_KERNEL);
	if (err)
		FUNC0(&sbi->alloc_valid_block_count);

	return err;
}