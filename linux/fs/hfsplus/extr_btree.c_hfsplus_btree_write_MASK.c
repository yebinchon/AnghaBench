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
struct hfs_btree_header_rec {int /*<<< orphan*/  depth; void* attributes; void* free_nodes; void* node_count; void* leaf_tail; void* leaf_head; void* leaf_count; void* root; } ;
struct hfs_btree {int /*<<< orphan*/  depth; int /*<<< orphan*/  attributes; int /*<<< orphan*/  free_nodes; int /*<<< orphan*/  node_count; int /*<<< orphan*/  leaf_tail; int /*<<< orphan*/  leaf_head; int /*<<< orphan*/  leaf_count; int /*<<< orphan*/  root; } ;
struct hfs_bnode_desc {int dummy; } ;
struct hfs_bnode {struct page** page; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct hfs_bnode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 struct hfs_bnode* FUNC3 (struct hfs_btree*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hfs_bnode*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

int FUNC8(struct hfs_btree *tree)
{
	struct hfs_btree_header_rec *head;
	struct hfs_bnode *node;
	struct page *page;

	node = FUNC3(tree, 0);
	if (FUNC0(node))
		/* panic? */
		return -EIO;
	/* Load the header */
	page = node->page[0];
	head = (struct hfs_btree_header_rec *)(FUNC5(page) +
		sizeof(struct hfs_bnode_desc));

	head->root = FUNC2(tree->root);
	head->leaf_count = FUNC2(tree->leaf_count);
	head->leaf_head = FUNC2(tree->leaf_head);
	head->leaf_tail = FUNC2(tree->leaf_tail);
	head->node_count = FUNC2(tree->node_count);
	head->free_nodes = FUNC2(tree->free_nodes);
	head->attributes = FUNC2(tree->attributes);
	head->depth = FUNC1(tree->depth);

	FUNC6(page);
	FUNC7(page);
	FUNC4(node);
	return 0;
}