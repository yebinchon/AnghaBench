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
struct sit_info {int /*<<< orphan*/  sentry_lock; } ;
struct seg_entry {int /*<<< orphan*/  ckpt_valid_map; } ;
struct f2fs_sb_info {int dummy; } ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 unsigned int FUNC0 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 struct sit_info* FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 struct seg_entry* FUNC6 (struct f2fs_sb_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

bool FUNC8(struct f2fs_sb_info *sbi, block_t blkaddr)
{
	struct sit_info *sit_i = FUNC2(sbi);
	unsigned int segno, offset;
	struct seg_entry *se;
	bool is_cp = false;

	if (!FUNC3(blkaddr))
		return true;

	FUNC4(&sit_i->sentry_lock);

	segno = FUNC1(sbi, blkaddr);
	se = FUNC6(sbi, segno);
	offset = FUNC0(sbi, blkaddr);

	if (FUNC5(offset, se->ckpt_valid_map))
		is_cp = true;

	FUNC7(&sit_i->sentry_lock);

	return is_cp;
}