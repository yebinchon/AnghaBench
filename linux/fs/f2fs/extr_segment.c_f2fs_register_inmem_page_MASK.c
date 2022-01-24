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
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct inmem_pages {int /*<<< orphan*/  list; struct page* page; } ;
struct TYPE_2__ {int /*<<< orphan*/  inmem_lock; int /*<<< orphan*/  inmem_pages; } ;

/* Variables and functions */
 scalar_t__ ATOMIC_WRITTEN_PAGE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  F2FS_INMEM_PAGES ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INMEM ; 
 struct inmem_pages* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inmem_entry_slab ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,int /*<<< orphan*/ ) ; 

void FUNC12(struct inode *inode, struct page *page)
{
	struct inmem_pages *new;

	FUNC5(page);

	FUNC4(page, (unsigned long)ATOMIC_WRITTEN_PAGE);

	new = FUNC3(inmem_entry_slab, GFP_NOFS);

	/* add atomic page indices to the list */
	new->page = page;
	FUNC2(&new->list);

	/* increase reference count with clean state */
	FUNC6(page);
	FUNC9(&FUNC0(inode)->inmem_lock);
	FUNC8(&new->list, &FUNC0(inode)->inmem_pages);
	FUNC7(FUNC1(inode), F2FS_INMEM_PAGES);
	FUNC10(&FUNC0(inode)->inmem_lock);

	FUNC11(page, INMEM);
}