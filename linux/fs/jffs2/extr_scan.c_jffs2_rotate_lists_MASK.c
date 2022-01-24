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
typedef  int uint32_t ;
struct jffs2_sb_info {int nr_erasing_blocks; int nr_free_blocks; int /*<<< orphan*/  free_list; int /*<<< orphan*/  erase_pending_list; int /*<<< orphan*/  erasable_list; int /*<<< orphan*/  dirty_list; int /*<<< orphan*/  very_dirty_list; int /*<<< orphan*/  clean_list; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int pseudo_random ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

void FUNC2(struct jffs2_sb_info *c)
{
	uint32_t x;
	uint32_t rotateby;

	x = FUNC0(&c->clean_list);
	if (x) {
		rotateby = pseudo_random % x;
		FUNC1((&c->clean_list), rotateby);
	}

	x = FUNC0(&c->very_dirty_list);
	if (x) {
		rotateby = pseudo_random % x;
		FUNC1((&c->very_dirty_list), rotateby);
	}

	x = FUNC0(&c->dirty_list);
	if (x) {
		rotateby = pseudo_random % x;
		FUNC1((&c->dirty_list), rotateby);
	}

	x = FUNC0(&c->erasable_list);
	if (x) {
		rotateby = pseudo_random % x;
		FUNC1((&c->erasable_list), rotateby);
	}

	if (c->nr_erasing_blocks) {
		rotateby = pseudo_random % c->nr_erasing_blocks;
		FUNC1((&c->erase_pending_list), rotateby);
	}

	if (c->nr_free_blocks) {
		rotateby = pseudo_random % c->nr_free_blocks;
		FUNC1((&c->free_list), rotateby);
	}
}