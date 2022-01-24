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
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct bdi_writeback {int dummy; } ;
struct address_space {struct inode* host; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr_dirtied; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_DIRTIED ; 
 int /*<<< orphan*/  NR_FILE_DIRTY ; 
 int /*<<< orphan*/  NR_ZONE_WRITE_PENDING ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  WB_DIRTIED ; 
 int /*<<< orphan*/  WB_RECLAIMABLE ; 
 int /*<<< orphan*/  FUNC0 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bdp_ratelimits ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC3 (struct bdi_writeback*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct page*) ; 
 struct bdi_writeback* FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,struct bdi_writeback*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,struct address_space*) ; 

void FUNC11(struct page *page, struct address_space *mapping)
{
	struct inode *inode = mapping->host;

	FUNC10(page, mapping);

	if (FUNC6(mapping)) {
		struct bdi_writeback *wb;

		FUNC4(inode, page);
		wb = FUNC5(inode);

		FUNC0(page, NR_FILE_DIRTY);
		FUNC2(page, NR_ZONE_WRITE_PENDING);
		FUNC1(page, NR_DIRTIED);
		FUNC3(wb, WB_RECLAIMABLE);
		FUNC3(wb, WB_DIRTIED);
		FUNC8(PAGE_SIZE);
		current->nr_dirtied++;
		FUNC9(bdp_ratelimits);

		FUNC7(page, wb);
	}
}