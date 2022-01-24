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
struct page {int /*<<< orphan*/  index; int /*<<< orphan*/  lru; int /*<<< orphan*/  flags; } ;
struct mpage_readpage_args {int is_readahead; unsigned int nr_pages; scalar_t__ bio; struct page* page; int /*<<< orphan*/  get_block; } ;
struct list_head {int dummy; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  get_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  REQ_RAHEAD ; 
 int /*<<< orphan*/  FUNC1 (struct page*,struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mpage_readpage_args*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct list_head*) ; 
 struct page* FUNC5 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct address_space*) ; 

int
FUNC10(struct address_space *mapping, struct list_head *pages,
				unsigned nr_pages, get_block_t get_block)
{
	struct mpage_readpage_args args = {
		.get_block = get_block,
		.is_readahead = true,
	};
	unsigned page_idx;

	for (page_idx = 0; page_idx < nr_pages; page_idx++) {
		struct page *page = FUNC5(pages);

		FUNC7(&page->flags);
		FUNC3(&page->lru);
		if (!FUNC1(page, mapping,
					page->index,
					FUNC9(mapping))) {
			args.page = page;
			args.nr_pages = nr_pages - page_idx;
			args.bio = FUNC2(&args);
		}
		FUNC8(page);
	}
	FUNC0(!FUNC4(pages));
	if (args.bio)
		FUNC6(REQ_OP_READ, REQ_RAHEAD, args.bio);
	return 0;
}