#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct nilfs_shadow_map {int /*<<< orphan*/  frozen_data; } ;
struct inode {int i_blkbits; } ;
struct buffer_head {TYPE_1__* b_page; } ;
struct TYPE_4__ {struct nilfs_shadow_map* mi_shadow; } ;
struct TYPE_3__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int FUNC1 (struct buffer_head*) ; 
 struct page* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC3 (struct page*,int) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

struct buffer_head *
FUNC7(struct inode *inode, struct buffer_head *bh)
{
	struct nilfs_shadow_map *shadow = FUNC0(inode)->mi_shadow;
	struct buffer_head *bh_frozen = NULL;
	struct page *page;
	int n;

	page = FUNC2(&shadow->frozen_data, bh->b_page->index);
	if (page) {
		if (FUNC4(page)) {
			n = FUNC1(bh) >> inode->i_blkbits;
			bh_frozen = FUNC3(page, n);
		}
		FUNC6(page);
		FUNC5(page);
	}
	return bh_frozen;
}