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
struct TYPE_2__ {int idx_growth; int /*<<< orphan*/  min_idx_lebs; scalar_t__ page_budget; int /*<<< orphan*/  dd_growth; int /*<<< orphan*/  data_growth; } ;
struct ubifs_info {int max_idx_node_sz; int /*<<< orphan*/  space_lock; TYPE_1__ bi; } ;

/* Variables and functions */
 int UBIFS_BLOCKS_PER_PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*) ; 

void FUNC3(struct ubifs_info *c)
{
	FUNC0(&c->space_lock);
	/* Release the index growth reservation */
	c->bi.idx_growth -= c->max_idx_node_sz << UBIFS_BLOCKS_PER_PAGE_SHIFT;
	/* Release the data growth reservation */
	c->bi.data_growth -= c->bi.page_budget;
	/* Increase the dirty data growth reservation instead */
	c->bi.dd_growth += c->bi.page_budget;
	/* And re-calculate the indexing space reservation */
	c->bi.min_idx_lebs = FUNC2(c);
	FUNC1(&c->space_lock);
}