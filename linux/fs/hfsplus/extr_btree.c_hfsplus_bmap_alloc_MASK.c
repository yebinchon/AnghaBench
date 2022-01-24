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
typedef  unsigned int u16 ;
struct page {int dummy; } ;
struct hfs_btree {int /*<<< orphan*/  inode; int /*<<< orphan*/  free_nodes; } ;
struct hfs_bnode {int next; struct page** page; scalar_t__ page_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNODE_MOD ; 
 struct hfs_bnode* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct hfs_bnode*) ; 
 unsigned int PAGE_MASK ; 
 unsigned int PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 
 struct hfs_bnode* FUNC2 (struct hfs_bnode*,int) ; 
 int FUNC3 (struct hfs_btree*,int) ; 
 struct hfs_bnode* FUNC4 (struct hfs_btree*,int) ; 
 struct hfs_bnode* FUNC5 (struct hfs_btree*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hfs_bnode*) ; 
 unsigned int FUNC7 (struct hfs_bnode*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int* FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 

struct hfs_bnode *FUNC13(struct hfs_btree *tree)
{
	struct hfs_bnode *node, *next_node;
	struct page **pagep;
	u32 nidx, idx;
	unsigned off;
	u16 off16;
	u16 len;
	u8 *data, byte, m;
	int i, res;

	res = FUNC3(tree, 1);
	if (res)
		return FUNC0(res);

	nidx = 0;
	node = FUNC5(tree, nidx);
	if (FUNC1(node))
		return node;
	len = FUNC7(node, 2, &off16);
	off = off16;

	off += node->page_offset;
	pagep = node->page + (off >> PAGE_SHIFT);
	data = FUNC9(*pagep);
	off &= ~PAGE_MASK;
	idx = 0;

	for (;;) {
		while (len) {
			byte = data[off];
			if (byte != 0xff) {
				for (m = 0x80, i = 0; i < 8; m >>= 1, i++) {
					if (!(byte & m)) {
						idx += i;
						data[off] |= m;
						FUNC12(*pagep);
						FUNC10(*pagep);
						tree->free_nodes--;
						FUNC11(tree->inode);
						FUNC6(node);
						return FUNC4(tree,
							idx);
					}
				}
			}
			if (++off >= PAGE_SIZE) {
				FUNC10(*pagep);
				data = FUNC9(*++pagep);
				off = 0;
			}
			idx += 8;
			len--;
		}
		FUNC10(*pagep);
		nidx = node->next;
		if (!nidx) {
			FUNC8(BNODE_MOD, "create new bmap node\n");
			next_node = FUNC2(node, idx);
		} else
			next_node = FUNC5(tree, nidx);
		FUNC6(node);
		if (FUNC1(next_node))
			return next_node;
		node = next_node;

		len = FUNC7(node, 0, &off16);
		off = off16;
		off += node->page_offset;
		pagep = node->page + (off >> PAGE_SHIFT);
		data = FUNC9(*pagep);
		off &= ~PAGE_MASK;
	}
}