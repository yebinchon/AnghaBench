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
struct hfs_btree {int /*<<< orphan*/  inode; int /*<<< orphan*/  node_hash_cnt; struct hfs_bnode** node_hash; } ;
struct hfs_bnode {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  this; TYPE_1__* tree; struct hfs_bnode* next_hash; } ;
struct TYPE_2__ {int /*<<< orphan*/  cnid; } ;

/* Variables and functions */
 int NODE_HASH_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hfs_bnode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hfs_btree*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC5(struct hfs_btree *tree)
{
	struct hfs_bnode *node;
	int i;

	if (!tree)
		return;

	for (i = 0; i < NODE_HASH_SIZE; i++) {
		while ((node = tree->node_hash[i])) {
			tree->node_hash[i] = node->next_hash;
			if (FUNC0(&node->refcnt))
				FUNC4("node %d:%d still has %d user(s)!\n",
				       node->tree->cnid, node->this,
				       FUNC0(&node->refcnt));
			FUNC1(node);
			tree->node_hash_cnt--;
		}
	}
	FUNC2(tree->inode);
	FUNC3(tree);
}