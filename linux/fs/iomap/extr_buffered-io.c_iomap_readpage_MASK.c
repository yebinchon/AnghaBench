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
struct page {TYPE_1__* mapping; } ;
struct iomap_readpage_ctx {int cur_page_in_bio; scalar_t__ bio; struct page* cur_page; } ;
struct iomap_ops {int dummy; } ;
struct inode {int dummy; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct inode*,scalar_t__,unsigned int,int /*<<< orphan*/ ,struct iomap_ops const*,struct iomap_readpage_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iomap_readpage_actor ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

int
FUNC6(struct page *page, const struct iomap_ops *ops)
{
	struct iomap_readpage_ctx ctx = { .cur_page = page };
	struct inode *inode = page->mapping->host;
	unsigned poff;
	loff_t ret;

	for (poff = 0; poff < PAGE_SIZE; poff += ret) {
		ret = FUNC2(inode, FUNC3(page) + poff,
				PAGE_SIZE - poff, 0, ops, &ctx,
				iomap_readpage_actor);
		if (ret <= 0) {
			FUNC1(ret == 0);
			FUNC0(page);
			break;
		}
	}

	if (ctx.bio) {
		FUNC4(ctx.bio);
		FUNC1(!ctx.cur_page_in_bio);
	} else {
		FUNC1(ctx.cur_page_in_bio);
		FUNC5(page);
	}

	/*
	 * Just like mpage_readpages and block_read_full_page we always
	 * return 0 and just mark the page as PageError on errors.  This
	 * should be cleaned up all through the stack eventually.
	 */
	return 0;
}