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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct page {int dummy; } ;
struct hfs_btree {int /*<<< orphan*/  inode; int /*<<< orphan*/  free_nodes; } ;
struct hfs_bnode {int this; int next; scalar_t__ type; struct page** page; scalar_t__ page_offset; struct hfs_btree* tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNODE_MOD ; 
 scalar_t__ HFS_NODE_MAP ; 
 scalar_t__ FUNC0 (struct hfs_bnode*) ; 
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 struct hfs_bnode* FUNC1 (struct hfs_btree*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hfs_bnode*) ; 
 int FUNC3 (struct hfs_bnode*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 

void FUNC10(struct hfs_bnode *node)
{
	struct hfs_btree *tree;
	struct page *page;
	u16 off, len;
	u32 nidx;
	u8 *data, byte, m;

	FUNC4(BNODE_MOD, "btree_free_node: %u\n", node->this);
	tree = node->tree;
	nidx = node->this;
	node = FUNC1(tree, 0);
	if (FUNC0(node))
		return;
	len = FUNC3(node, 2, &off);
	while (nidx >= len * 8) {
		u32 i;

		nidx -= len * 8;
		i = node->next;
		if (!i) {
			/* panic */;
			FUNC8("unable to free bnode %u. bmap not found!\n",
				node->this);
			FUNC2(node);
			return;
		}
		FUNC2(node);
		node = FUNC1(tree, i);
		if (FUNC0(node))
			return;
		if (node->type != HFS_NODE_MAP) {
			/* panic */;
			FUNC8("invalid bmap found! (%u,%d)\n",
				node->this, node->type);
			FUNC2(node);
			return;
		}
		len = FUNC3(node, 0, &off);
	}
	off += node->page_offset + nidx / 8;
	page = node->page[off >> PAGE_SHIFT];
	data = FUNC5(page);
	off &= ~PAGE_MASK;
	m = 1 << (~nidx & 7);
	byte = data[off];
	if (!(byte & m)) {
		FUNC8("trying to free free bnode %u(%d)\n",
			node->this, node->type);
		FUNC6(page);
		FUNC2(node);
		return;
	}
	data[off] = byte & ~m;
	FUNC9(page);
	FUNC6(page);
	FUNC2(node);
	tree->free_nodes++;
	FUNC7(tree->inode);
}