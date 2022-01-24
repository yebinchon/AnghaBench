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
struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {int /*<<< orphan*/  flags; struct page* page; } ;
struct page {int dummy; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PIPE_BUF_FLAG_LRU ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 struct address_space* FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct address_space*,struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 

__attribute__((used)) static int FUNC9(struct pipe_inode_info *pipe,
				     struct pipe_buffer *buf)
{
	struct page *page = buf->page;
	struct address_space *mapping;

	FUNC2(page);

	mapping = FUNC4(page);
	if (mapping) {
		FUNC1(!FUNC0(page));

		/*
		 * At least for ext2 with nobh option, we need to wait on
		 * writeback completing on this page, since we'll remove it
		 * from the pagecache.  Otherwise truncate wont wait on the
		 * page, allowing the disk blocks to be reused by someone else
		 * before we actually wrote our data to them. fs corruption
		 * ensues.
		 */
		FUNC8(page);

		if (FUNC3(page) &&
		    !FUNC6(page, GFP_KERNEL))
			goto out_unlock;

		/*
		 * If we succeeded in removing the mapping, set LRU flag
		 * and return good.
		 */
		if (FUNC5(mapping, page)) {
			buf->flags |= PIPE_BUF_FLAG_LRU;
			return 0;
		}
	}

	/*
	 * Raced with truncate or failed to remove page from current
	 * address space, unlock and return failure.
	 */
out_unlock:
	FUNC7(page);
	return 1;
}