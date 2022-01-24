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
struct f2fs_sb_info {int dummy; } ;
struct dirty_seglist_info {int /*<<< orphan*/  victim_secmap; } ;

/* Variables and functions */
 struct dirty_seglist_info* FUNC0 (struct f2fs_sb_info*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct f2fs_sb_info *sbi)
{
	struct dirty_seglist_info *dirty_i = FUNC0(sbi);
	unsigned int bitmap_size = FUNC2(FUNC1(sbi));

	dirty_i->victim_secmap = FUNC3(sbi, bitmap_size, GFP_KERNEL);
	if (!dirty_i->victim_secmap)
		return -ENOMEM;
	return 0;
}