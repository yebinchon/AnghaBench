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
struct hfs_btree {int pages_per_bnode; int /*<<< orphan*/  hash_lock; int /*<<< orphan*/  node_size; int /*<<< orphan*/  cnid; } ;
struct hfs_bnode {int /*<<< orphan*/  flags; int /*<<< orphan*/ * page; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  this; struct hfs_btree* tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNODE_REFS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  HFS_BNODE_DELETED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hfs_bnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct hfs_bnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hfs_bnode*) ; 
 scalar_t__ FUNC6 (struct hfs_btree*) ; 
 int /*<<< orphan*/  FUNC7 (struct hfs_bnode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC12(struct hfs_bnode *node)
{
	if (node) {
		struct hfs_btree *tree = node->tree;
		int i;

		FUNC8(BNODE_REFS, "put_node(%d:%d): %d\n",
			node->tree->cnid, node->this,
			FUNC2(&node->refcnt));
		FUNC0(!FUNC2(&node->refcnt));
		if (!FUNC1(&node->refcnt, &tree->hash_lock))
			return;
		for (i = 0; i < tree->pages_per_bnode; i++) {
			if (!node->page[i])
				continue;
			FUNC9(node->page[i]);
		}

		if (FUNC11(HFS_BNODE_DELETED, &node->flags)) {
			FUNC7(node);
			FUNC10(&tree->hash_lock);
			if (FUNC6(tree))
				FUNC4(node, 0, tree->node_size);
			FUNC3(node);
			FUNC5(node);
			return;
		}
		FUNC10(&tree->hash_lock);
	}
}