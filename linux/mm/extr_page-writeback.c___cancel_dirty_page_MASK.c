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
struct wb_lock_cookie {int dummy; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct bdi_writeback {int dummy; } ;
struct address_space {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,struct address_space*,struct bdi_writeback*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct address_space*) ; 
 struct address_space* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 struct bdi_writeback* FUNC7 (struct inode*,struct wb_lock_cookie*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,struct wb_lock_cookie*) ; 

void FUNC9(struct page *page)
{
	struct address_space *mapping = FUNC5(page);

	if (FUNC4(mapping)) {
		struct inode *inode = mapping->host;
		struct bdi_writeback *wb;
		struct wb_lock_cookie cookie = {};

		FUNC3(page);
		wb = FUNC7(inode, &cookie);

		if (FUNC1(page))
			FUNC2(page, mapping, wb);

		FUNC8(inode, &cookie);
		FUNC6(page);
	} else {
		FUNC0(page);
	}
}