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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ HFS_NODE_MAP ; 
 scalar_t__ FUNC1 (struct hfs_bnode*) ; 
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 struct hfs_bnode* FUNC2 (struct hfs_btree*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hfs_bnode*) ; 
 int FUNC4 (struct hfs_bnode*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 

void FUNC11(struct hfs_bnode *node)
{
	struct hfs_btree *tree;
	struct page *page;
	u16 off, len;
	u32 nidx;
	u8 *data, byte, m;

	FUNC5(BNODE_MOD, "btree_free_node: %u\n", node->this);
	FUNC0(!node->this);
	tree = node->tree;
	nidx = node->this;
	node = FUNC2(tree, 0);
	if (FUNC1(node))
		return;
	len = FUNC4(node, 2, &off);
	while (nidx >= len * 8) {
		u32 i;

		nidx -= len * 8;
		i = node->next;
		if (!i) {
			/* panic */;
			FUNC9("unable to free bnode %u. "
					"bmap not found!\n",
				node->this);
			FUNC3(node);
			return;
		}
		FUNC3(node);
		node = FUNC2(tree, i);
		if (FUNC1(node))
			return;
		if (node->type != HFS_NODE_MAP) {
			/* panic */;
			FUNC9("invalid bmap found! "
					"(%u,%d)\n",
				node->this, node->type);
			FUNC3(node);
			return;
		}
		len = FUNC4(node, 0, &off);
	}
	off += node->page_offset + nidx / 8;
	page = node->page[off >> PAGE_SHIFT];
	data = FUNC6(page);
	off &= ~PAGE_MASK;
	m = 1 << (~nidx & 7);
	byte = data[off];
	if (!(byte & m)) {
		FUNC9("trying to free free bnode "
				"%u(%d)\n",
			node->this, node->type);
		FUNC7(page);
		FUNC3(node);
		return;
	}
	data[off] = byte & ~m;
	FUNC10(page);
	FUNC7(page);
	FUNC3(node);
	tree->free_nodes++;
	FUNC8(tree->inode);
}