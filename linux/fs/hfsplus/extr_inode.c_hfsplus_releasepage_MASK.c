#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct super_block {int dummy; } ;
struct page {int index; TYPE_1__* mapping; } ;
struct inode {int i_ino; struct super_block* i_sb; } ;
struct hfs_btree {scalar_t__ node_size; int node_size_shift; int node_count; int /*<<< orphan*/  hash_lock; } ;
struct hfs_bnode {int /*<<< orphan*/  refcnt; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_4__ {struct hfs_btree* attr_tree; struct hfs_btree* cat_tree; struct hfs_btree* ext_tree; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  HFSPLUS_ATTR_CNID 130 
#define  HFSPLUS_CAT_CNID 129 
#define  HFSPLUS_EXT_CNID 128 
 TYPE_2__* FUNC1 (struct super_block*) ; 
 int PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct hfs_bnode* FUNC3 (struct hfs_btree*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hfs_bnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct hfs_bnode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct page*) ; 

__attribute__((used)) static int FUNC9(struct page *page, gfp_t mask)
{
	struct inode *inode = page->mapping->host;
	struct super_block *sb = inode->i_sb;
	struct hfs_btree *tree;
	struct hfs_bnode *node;
	u32 nidx;
	int i, res = 1;

	switch (inode->i_ino) {
	case HFSPLUS_EXT_CNID:
		tree = FUNC1(sb)->ext_tree;
		break;
	case HFSPLUS_CAT_CNID:
		tree = FUNC1(sb)->cat_tree;
		break;
	case HFSPLUS_ATTR_CNID:
		tree = FUNC1(sb)->attr_tree;
		break;
	default:
		FUNC0();
		return 0;
	}
	if (!tree)
		return 0;
	if (tree->node_size >= PAGE_SIZE) {
		nidx = page->index >>
			(tree->node_size_shift - PAGE_SHIFT);
		FUNC6(&tree->hash_lock);
		node = FUNC3(tree, nidx);
		if (!node)
			;
		else if (FUNC2(&node->refcnt))
			res = 0;
		if (res && node) {
			FUNC5(node);
			FUNC4(node);
		}
		FUNC7(&tree->hash_lock);
	} else {
		nidx = page->index <<
			(PAGE_SHIFT - tree->node_size_shift);
		i = 1 << (PAGE_SHIFT - tree->node_size_shift);
		FUNC6(&tree->hash_lock);
		do {
			node = FUNC3(tree, nidx++);
			if (!node)
				continue;
			if (FUNC2(&node->refcnt)) {
				res = 0;
				break;
			}
			FUNC5(node);
			FUNC4(node);
		} while (--i && nidx < tree->node_count);
		FUNC7(&tree->hash_lock);
	}
	return res ? FUNC8(page) : 0;
}