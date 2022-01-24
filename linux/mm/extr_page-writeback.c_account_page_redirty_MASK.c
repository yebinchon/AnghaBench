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
struct wb_lock_cookie {int dummy; } ;
struct page {struct address_space* mapping; } ;
struct inode {int dummy; } ;
struct bdi_writeback {int dummy; } ;
struct address_space {struct inode* host; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr_dirtied; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_DIRTIED ; 
 int /*<<< orphan*/  WB_DIRTIED ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bdi_writeback*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct address_space*) ; 
 struct bdi_writeback* FUNC3 (struct inode*,struct wb_lock_cookie*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct wb_lock_cookie*) ; 

void FUNC5(struct page *page)
{
	struct address_space *mapping = page->mapping;

	if (mapping && FUNC2(mapping)) {
		struct inode *inode = mapping->host;
		struct bdi_writeback *wb;
		struct wb_lock_cookie cookie = {};

		wb = FUNC3(inode, &cookie);
		current->nr_dirtied--;
		FUNC0(page, NR_DIRTIED);
		FUNC1(wb, WB_DIRTIED);
		FUNC4(inode, &cookie);
	}
}