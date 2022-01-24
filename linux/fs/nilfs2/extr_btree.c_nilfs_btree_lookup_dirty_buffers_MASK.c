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
struct pagevec {int /*<<< orphan*/ * pages; } ;
struct nilfs_bmap {int dummy; } ;
struct list_head {int dummy; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;
struct TYPE_2__ {struct address_space i_btnode_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 TYPE_1__* FUNC1 (struct nilfs_bmap*) ; 
 int NILFS_BTREE_LEVEL_MAX ; 
 int NILFS_BTREE_LEVEL_NODE_MIN ; 
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct list_head*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct nilfs_bmap*,struct list_head*,struct buffer_head*) ; 
 struct buffer_head* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC8 (struct pagevec*) ; 
 scalar_t__ FUNC9 (struct pagevec*,struct address_space*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pagevec*) ; 

__attribute__((used)) static void FUNC11(struct nilfs_bmap *btree,
					     struct list_head *listp)
{
	struct address_space *btcache = &FUNC1(btree)->i_btnode_cache;
	struct list_head lists[NILFS_BTREE_LEVEL_MAX];
	struct pagevec pvec;
	struct buffer_head *bh, *head;
	pgoff_t index = 0;
	int level, i;

	for (level = NILFS_BTREE_LEVEL_NODE_MIN;
	     level < NILFS_BTREE_LEVEL_MAX;
	     level++)
		FUNC0(&lists[level]);

	FUNC8(&pvec);

	while (FUNC9(&pvec, btcache, &index,
					PAGECACHE_TAG_DIRTY)) {
		for (i = 0; i < FUNC7(&pvec); i++) {
			bh = head = FUNC6(pvec.pages[i]);
			do {
				if (FUNC2(bh))
					FUNC5(btree,
								     lists, bh);
			} while ((bh = bh->b_this_page) != head);
		}
		FUNC10(&pvec);
		FUNC3();
	}

	for (level = NILFS_BTREE_LEVEL_NODE_MIN;
	     level < NILFS_BTREE_LEVEL_MAX;
	     level++)
		FUNC4(&lists[level], listp);
}