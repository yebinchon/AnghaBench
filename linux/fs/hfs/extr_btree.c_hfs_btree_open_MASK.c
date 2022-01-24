#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct super_block {int dummy; } ;
struct page {int dummy; } ;
struct hfs_mdb {int /*<<< orphan*/  drCTClpSiz; int /*<<< orphan*/  drCTFlSize; int /*<<< orphan*/  drCTExtRec; int /*<<< orphan*/  drXTClpSiz; int /*<<< orphan*/  drXTFlSize; int /*<<< orphan*/  drXTExtRec; } ;
struct hfs_btree_header_rec {int /*<<< orphan*/  depth; int /*<<< orphan*/  max_key_len; int /*<<< orphan*/  node_size; int /*<<< orphan*/  attributes; int /*<<< orphan*/  free_nodes; int /*<<< orphan*/  node_count; int /*<<< orphan*/  leaf_tail; int /*<<< orphan*/  leaf_head; int /*<<< orphan*/  leaf_count; int /*<<< orphan*/  root; } ;
struct hfs_btree {int cnid; unsigned int node_size; int pages_per_bnode; TYPE_1__* inode; scalar_t__ node_size_shift; void* max_key_len; void* node_count; void* depth; void* attributes; void* free_nodes; void* leaf_tail; void* leaf_head; void* leaf_count; void* root; int /*<<< orphan*/  keycmp; struct super_block* sb; int /*<<< orphan*/  hash_lock; int /*<<< orphan*/  tree_lock; } ;
struct hfs_bnode_desc {int dummy; } ;
struct address_space {int /*<<< orphan*/ * a_ops; } ;
typedef  int /*<<< orphan*/  btree_keycmp ;
struct TYPE_10__ {int /*<<< orphan*/  first_blocks; int /*<<< orphan*/  alloc_blocks; int /*<<< orphan*/  extents_lock; scalar_t__ flags; } ;
struct TYPE_9__ {struct hfs_mdb* mdb; } ;
struct TYPE_8__ {int i_state; struct address_space* i_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  HFS_CAT_CNID 129 
#define  HFS_EXT_CNID 128 
 TYPE_6__* FUNC2 (TYPE_1__*) ; 
 void* HFS_MAX_CAT_KEYLEN ; 
 void* HFS_MAX_EXT_KEYLEN ; 
 TYPE_5__* FUNC3 (struct super_block*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int I_NEW ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  hfs_aops ; 
 int /*<<< orphan*/  hfs_btree_aops ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 TYPE_1__* FUNC9 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct hfs_btree*) ; 
 scalar_t__ FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 struct hfs_btree* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 struct page* FUNC19 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 

struct hfs_btree *FUNC22(struct super_block *sb, u32 id, btree_keycmp keycmp)
{
	struct hfs_btree *tree;
	struct hfs_btree_header_rec *head;
	struct address_space *mapping;
	struct page *page;
	unsigned int size;

	tree = FUNC15(sizeof(*tree), GFP_KERNEL);
	if (!tree)
		return NULL;

	FUNC16(&tree->tree_lock);
	FUNC20(&tree->hash_lock);
	/* Set the correct compare function */
	tree->sb = sb;
	tree->cnid = id;
	tree->keycmp = keycmp;

	tree->inode = FUNC9(sb, id);
	if (!tree->inode)
		goto free_tree;
	FUNC1(!(tree->inode->i_state & I_NEW));
	{
	struct hfs_mdb *mdb = FUNC3(sb)->mdb;
	FUNC2(tree->inode)->flags = 0;
	FUNC16(&FUNC2(tree->inode)->extents_lock);
	switch (id) {
	case HFS_EXT_CNID:
		FUNC8(tree->inode, mdb->drXTExtRec, mdb->drXTFlSize,
				    mdb->drXTFlSize, FUNC6(mdb->drXTClpSiz));
		if (FUNC2(tree->inode)->alloc_blocks >
					FUNC2(tree->inode)->first_blocks) {
			FUNC17("invalid btree extent records\n");
			FUNC21(tree->inode);
			goto free_inode;
		}

		tree->inode->i_mapping->a_ops = &hfs_btree_aops;
		break;
	case HFS_CAT_CNID:
		FUNC8(tree->inode, mdb->drCTExtRec, mdb->drCTFlSize,
				    mdb->drCTFlSize, FUNC6(mdb->drCTClpSiz));

		if (!FUNC2(tree->inode)->first_blocks) {
			FUNC17("invalid btree extent records (0 size)\n");
			FUNC21(tree->inode);
			goto free_inode;
		}

		tree->inode->i_mapping->a_ops = &hfs_btree_aops;
		break;
	default:
		FUNC0();
	}
	}
	FUNC21(tree->inode);

	mapping = tree->inode->i_mapping;
	page = FUNC19(mapping, 0, NULL);
	if (FUNC4(page))
		goto free_inode;

	/* Load the header */
	head = (struct hfs_btree_header_rec *)(FUNC13(page) + sizeof(struct hfs_bnode_desc));
	tree->root = FUNC6(head->root);
	tree->leaf_count = FUNC6(head->leaf_count);
	tree->leaf_head = FUNC6(head->leaf_head);
	tree->leaf_tail = FUNC6(head->leaf_tail);
	tree->node_count = FUNC6(head->node_count);
	tree->free_nodes = FUNC6(head->free_nodes);
	tree->attributes = FUNC6(head->attributes);
	tree->node_size = FUNC5(head->node_size);
	tree->max_key_len = FUNC5(head->max_key_len);
	tree->depth = FUNC5(head->depth);

	size = tree->node_size;
	if (!FUNC11(size))
		goto fail_page;
	if (!tree->node_count)
		goto fail_page;
	switch (id) {
	case HFS_EXT_CNID:
		if (tree->max_key_len != HFS_MAX_EXT_KEYLEN) {
			FUNC17("invalid extent max_key_len %d\n",
			       tree->max_key_len);
			goto fail_page;
		}
		break;
	case HFS_CAT_CNID:
		if (tree->max_key_len != HFS_MAX_CAT_KEYLEN) {
			FUNC17("invalid catalog max_key_len %d\n",
			       tree->max_key_len);
			goto fail_page;
		}
		break;
	default:
		FUNC0();
	}

	tree->node_size_shift = FUNC7(size) - 1;
	tree->pages_per_bnode = (tree->node_size + PAGE_SIZE - 1) >> PAGE_SHIFT;

	FUNC14(page);
	FUNC18(page);
	return tree;

fail_page:
	FUNC18(page);
free_inode:
	tree->inode->i_mapping->a_ops = &hfs_aops;
	FUNC10(tree->inode);
free_tree:
	FUNC12(tree);
	return NULL;
}