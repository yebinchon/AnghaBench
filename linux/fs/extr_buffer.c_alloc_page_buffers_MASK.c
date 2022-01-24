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
struct mem_cgroup {int dummy; } ;
struct buffer_head {int b_blocknr; unsigned long b_size; struct buffer_head* b_this_page; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int GFP_NOFS ; 
 long PAGE_SIZE ; 
 int __GFP_ACCOUNT ; 
 int __GFP_NOFAIL ; 
 struct buffer_head* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 struct mem_cgroup* FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*,struct page*,long) ; 

struct buffer_head *FUNC7(struct page *page, unsigned long size,
		bool retry)
{
	struct buffer_head *bh, *head;
	gfp_t gfp = GFP_NOFS | __GFP_ACCOUNT;
	long offset;
	struct mem_cgroup *memcg;

	if (retry)
		gfp |= __GFP_NOFAIL;

	memcg = FUNC2(page);
	FUNC5(memcg);

	head = NULL;
	offset = PAGE_SIZE;
	while ((offset -= size) >= 0) {
		bh = FUNC0(gfp);
		if (!bh)
			goto no_grow;

		bh->b_this_page = head;
		bh->b_blocknr = -1;
		head = bh;

		bh->b_size = size;

		/* Link the buffer to its page */
		FUNC6(bh, page, offset);
	}
out:
	FUNC4();
	FUNC3(memcg);
	return head;
/*
 * In case anything failed, we just free everything we got.
 */
no_grow:
	if (head) {
		do {
			bh = head;
			head = head->b_this_page;
			FUNC1(bh);
		} while (head);
	}

	goto out;
}