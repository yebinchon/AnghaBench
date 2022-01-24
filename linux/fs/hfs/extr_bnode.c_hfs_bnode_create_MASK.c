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
typedef  int /*<<< orphan*/  u32 ;
struct page {int dummy; } ;
struct hfs_btree {int pages_per_bnode; scalar_t__ node_size; int /*<<< orphan*/  hash_lock; } ;
struct hfs_bnode {int /*<<< orphan*/  lock_wq; int /*<<< orphan*/  flags; scalar_t__ page_offset; struct page** page; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct hfs_bnode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HFS_BNODE_ERROR ; 
 int /*<<< orphan*/  HFS_BNODE_NEW ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct hfs_bnode* FUNC2 (struct hfs_btree*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hfs_bnode* FUNC4 (struct hfs_btree*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hfs_bnode*) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

struct hfs_bnode *FUNC16(struct hfs_btree *tree, u32 num)
{
	struct hfs_bnode *node;
	struct page **pagep;
	int i;

	FUNC12(&tree->hash_lock);
	node = FUNC4(tree, num);
	FUNC13(&tree->hash_lock);
	if (node) {
		FUNC10("new node %u already hashed?\n", num);
		FUNC1(1);
		return node;
	}
	node = FUNC2(tree, num);
	if (!node)
		return FUNC0(-ENOMEM);
	if (FUNC14(HFS_BNODE_ERROR, &node->flags)) {
		FUNC5(node);
		return FUNC0(-EIO);
	}

	pagep = node->page;
	FUNC8(FUNC6(*pagep) + node->page_offset, 0,
	       FUNC9((int)PAGE_SIZE, (int)tree->node_size));
	FUNC11(*pagep);
	FUNC7(*pagep);
	for (i = 1; i < tree->pages_per_bnode; i++) {
		FUNC8(FUNC6(*++pagep), 0, PAGE_SIZE);
		FUNC11(*pagep);
		FUNC7(*pagep);
	}
	FUNC3(HFS_BNODE_NEW, &node->flags);
	FUNC15(&node->lock_wq);

	return node;
}