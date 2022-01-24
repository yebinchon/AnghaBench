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
struct f2fs_sb_info {int dummy; } ;
typedef  scalar_t__ block_t ;

/* Variables and functions */
 unsigned int FUNC0 (struct f2fs_sb_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*) ; 
 scalar_t__ NEW_ADDR ; 
 scalar_t__ NULL_ADDR ; 
 struct sit_info* FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct f2fs_sb_info*,scalar_t__,int) ; 

void FUNC9(struct f2fs_sb_info *sbi, block_t addr)
{
	unsigned int segno = FUNC0(sbi, addr);
	struct sit_info *sit_i = FUNC2(sbi);

	FUNC4(sbi, addr == NULL_ADDR);
	if (addr == NEW_ADDR)
		return;

	FUNC5(FUNC1(sbi), addr, addr);

	/* add it into sit main buffer */
	FUNC3(&sit_i->sentry_lock);

	FUNC8(sbi, addr, -1);

	/* add it into dirty seglist */
	FUNC6(sbi, segno);

	FUNC7(&sit_i->sentry_lock);
}