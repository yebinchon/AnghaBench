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
typedef  scalar_t__ uint32_t ;
struct jffs2_sb_info {int /*<<< orphan*/  erase_wait; int /*<<< orphan*/  erase_free_sem; int /*<<< orphan*/  erase_completion_lock; int /*<<< orphan*/  nr_erasing_blocks; int /*<<< orphan*/  bad_list; scalar_t__ sector_size; int /*<<< orphan*/  bad_size; int /*<<< orphan*/  erasing_size; int /*<<< orphan*/  dirty_size; int /*<<< orphan*/  erase_pending_list; } ;
struct jffs2_eraseblock {int /*<<< orphan*/  list; scalar_t__ dirty_size; } ;

/* Variables and functions */
 scalar_t__ MTD_FAIL_ADDR_UNKNOWN ; 
 scalar_t__ FUNC0 (struct jffs2_sb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct jffs2_sb_info*,struct jffs2_eraseblock*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct jffs2_sb_info *c, struct jffs2_eraseblock *jeb, uint32_t bad_offset)
{
	/* For NAND, if the failure did not occur at the device level for a
	   specific physical page, don't bother updating the bad block table. */
	if (FUNC0(c) && (bad_offset != (uint32_t)MTD_FAIL_ADDR_UNKNOWN)) {
		/* We had a device-level failure to erase.  Let's see if we've
		   failed too many times. */
		if (!FUNC1(c, jeb, bad_offset)) {
			/* We'd like to give this block another try. */
			FUNC3(&c->erase_free_sem);
			FUNC5(&c->erase_completion_lock);
			FUNC2(&jeb->list, &c->erase_pending_list);
			c->erasing_size -= c->sector_size;
			c->dirty_size += c->sector_size;
			jeb->dirty_size = c->sector_size;
			FUNC6(&c->erase_completion_lock);
			FUNC4(&c->erase_free_sem);
			return;
		}
	}

	FUNC3(&c->erase_free_sem);
	FUNC5(&c->erase_completion_lock);
	c->erasing_size -= c->sector_size;
	c->bad_size += c->sector_size;
	FUNC2(&jeb->list, &c->bad_list);
	c->nr_erasing_blocks--;
	FUNC6(&c->erase_completion_lock);
	FUNC4(&c->erase_free_sem);
	FUNC7(&c->erase_wait);
}