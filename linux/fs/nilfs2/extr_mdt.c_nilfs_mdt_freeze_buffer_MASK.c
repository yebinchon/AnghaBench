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
struct nilfs_shadow_map {int /*<<< orphan*/  frozen_buffers; int /*<<< orphan*/  frozen_data; } ;
struct inode {int i_blkbits; } ;
struct buffer_head {int /*<<< orphan*/  b_assoc_buffers; TYPE_1__* b_page; } ;
struct TYPE_4__ {struct nilfs_shadow_map* mi_shadow; } ;
struct TYPE_3__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int ENOMEM ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int,int /*<<< orphan*/ ) ; 
 struct page* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*,struct buffer_head*) ; 
 struct buffer_head* FUNC9 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 

int FUNC14(struct inode *inode, struct buffer_head *bh)
{
	struct nilfs_shadow_map *shadow = FUNC0(inode)->mi_shadow;
	struct buffer_head *bh_frozen;
	struct page *page;
	int blkbits = inode->i_blkbits;

	page = FUNC5(&shadow->frozen_data, bh->b_page->index);
	if (!page)
		return -ENOMEM;

	if (!FUNC10(page))
		FUNC4(page, 1 << blkbits, 0);

	bh_frozen = FUNC9(page, FUNC1(bh) >> blkbits);

	if (!FUNC3(bh_frozen))
		FUNC8(bh_frozen, bh);
	if (FUNC7(&bh_frozen->b_assoc_buffers)) {
		FUNC6(&bh_frozen->b_assoc_buffers,
			      &shadow->frozen_buffers);
		FUNC12(bh);
	} else {
		FUNC2(bh_frozen); /* already frozen */
	}

	FUNC13(page);
	FUNC11(page);
	return 0;
}