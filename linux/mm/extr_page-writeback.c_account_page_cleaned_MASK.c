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
struct page {int dummy; } ;
struct bdi_writeback {int dummy; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_FILE_DIRTY ; 
 int /*<<< orphan*/  NR_ZONE_WRITE_PENDING ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  WB_RECLAIMABLE ; 
 int /*<<< orphan*/  FUNC0 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bdi_writeback*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct page *page, struct address_space *mapping,
			  struct bdi_writeback *wb)
{
	if (FUNC3(mapping)) {
		FUNC0(page, NR_FILE_DIRTY);
		FUNC2(page, NR_ZONE_WRITE_PENDING);
		FUNC1(wb, WB_RECLAIMABLE);
		FUNC4(PAGE_SIZE);
	}
}