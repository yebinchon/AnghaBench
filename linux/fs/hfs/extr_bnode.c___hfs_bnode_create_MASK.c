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
typedef  scalar_t__ u32 ;
struct page {int dummy; } ;
struct hfs_btree {scalar_t__ node_count; int pages_per_bnode; int node_size; TYPE_1__* inode; int /*<<< orphan*/  hash_lock; int /*<<< orphan*/  node_hash_cnt; struct hfs_bnode** node_hash; int /*<<< orphan*/  cnid; } ;
struct hfs_bnode {int page_offset; int /*<<< orphan*/  flags; struct page** page; int /*<<< orphan*/  lock_wq; struct hfs_bnode* next_hash; scalar_t__ this; struct hfs_btree* tree; int /*<<< orphan*/  refcnt; } ;
struct address_space {int dummy; } ;
typedef  int loff_t ;
struct TYPE_2__ {struct address_space* i_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNODE_REFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HFS_BNODE_ERROR ; 
 int /*<<< orphan*/  HFS_BNODE_NEW ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct hfs_bnode* FUNC3 (struct hfs_btree*,scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct hfs_bnode*) ; 
 struct hfs_bnode* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 struct page* FUNC11 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct hfs_bnode *FUNC17(struct hfs_btree *tree, u32 cnid)
{
	struct hfs_bnode *node, *node2;
	struct address_space *mapping;
	struct page *page;
	int size, block, i, hash;
	loff_t off;

	if (cnid >= tree->node_count) {
		FUNC9("request for non-existent node %d in B*Tree\n", cnid);
		return NULL;
	}

	size = sizeof(struct hfs_bnode) + tree->pages_per_bnode *
		sizeof(struct page *);
	node = FUNC8(size, GFP_KERNEL);
	if (!node)
		return NULL;
	node->tree = tree;
	node->this = cnid;
	FUNC12(HFS_BNODE_NEW, &node->flags);
	FUNC2(&node->refcnt, 1);
	FUNC5(BNODE_REFS, "new_node(%d:%d): 1\n",
		node->tree->cnid, node->this);
	FUNC6(&node->lock_wq);
	FUNC13(&tree->hash_lock);
	node2 = FUNC3(tree, cnid);
	if (!node2) {
		hash = FUNC4(cnid);
		node->next_hash = tree->node_hash[hash];
		tree->node_hash[hash] = node;
		tree->node_hash_cnt++;
	} else {
		FUNC14(&tree->hash_lock);
		FUNC7(node);
		FUNC16(node2->lock_wq, !FUNC15(HFS_BNODE_NEW, &node2->flags));
		return node2;
	}
	FUNC14(&tree->hash_lock);

	mapping = tree->inode->i_mapping;
	off = (loff_t)cnid * tree->node_size;
	block = off >> PAGE_SHIFT;
	node->page_offset = off & ~PAGE_MASK;
	for (i = 0; i < tree->pages_per_bnode; i++) {
		page = FUNC11(mapping, block++, NULL);
		if (FUNC0(page))
			goto fail;
		if (FUNC1(page)) {
			FUNC10(page);
			goto fail;
		}
		node->page[i] = page;
	}

	return node;
fail:
	FUNC12(HFS_BNODE_ERROR, &node->flags);
	return node;
}