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
typedef  int /*<<< orphan*/  u16 ;
struct super_block {int dummy; } ;
struct page {struct address_space* i_mapping; } ;
struct inode {struct address_space* i_mapping; } ;
struct hfs_btree_header_rec {int /*<<< orphan*/  key_type; int /*<<< orphan*/  depth; int /*<<< orphan*/  max_key_len; int /*<<< orphan*/  node_size; int /*<<< orphan*/  attributes; int /*<<< orphan*/  free_nodes; int /*<<< orphan*/  node_count; int /*<<< orphan*/  leaf_tail; int /*<<< orphan*/  leaf_head; int /*<<< orphan*/  leaf_count; int /*<<< orphan*/  root; } ;
struct hfs_btree {int cnid; int attributes; unsigned int node_size; int pages_per_bnode; struct page* inode; scalar_t__ node_size_shift; void* node_count; int /*<<< orphan*/  keycmp; void* max_key_len; void* depth; void* free_nodes; void* leaf_tail; void* leaf_head; void* leaf_count; void* root; struct super_block* sb; int /*<<< orphan*/  hash_lock; int /*<<< orphan*/  tree_lock; } ;
struct hfs_bnode_desc {int dummy; } ;
struct address_space {int /*<<< orphan*/ * a_ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  first_blocks; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  HFSPLUS_ATTR_CNID 130 
 int /*<<< orphan*/  HFSPLUS_ATTR_KEYLEN ; 
#define  HFSPLUS_CAT_CNID 129 
 int /*<<< orphan*/  HFSPLUS_CAT_KEYLEN ; 
#define  HFSPLUS_EXT_CNID 128 
 int /*<<< orphan*/  HFSPLUS_EXT_KEYLEN ; 
 TYPE_2__* FUNC0 (struct page*) ; 
 int /*<<< orphan*/  HFSPLUS_KEY_BINARY ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  HFSPLUS_SB_CASEFOLD ; 
 int /*<<< orphan*/  HFSPLUS_SB_HFSX ; 
 int HFS_TREE_BIGKEYS ; 
 int HFS_TREE_VARIDXKEYS ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  hfsplus_aops ; 
 int /*<<< orphan*/  hfsplus_attr_bin_cmp_key ; 
 int /*<<< orphan*/  hfsplus_cat_bin_cmp_key ; 
 int /*<<< orphan*/  hfsplus_cat_case_cmp_key ; 
 int /*<<< orphan*/  hfsplus_ext_cmp_key ; 
 struct page* FUNC6 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct hfs_btree*) ; 
 scalar_t__ FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 struct hfs_btree* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 struct page* FUNC16 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct hfs_btree *FUNC20(struct super_block *sb, u32 id)
{
	struct hfs_btree *tree;
	struct hfs_btree_header_rec *head;
	struct address_space *mapping;
	struct inode *inode;
	struct page *page;
	unsigned int size;

	tree = FUNC12(sizeof(*tree), GFP_KERNEL);
	if (!tree)
		return NULL;

	FUNC13(&tree->tree_lock);
	FUNC18(&tree->hash_lock);
	tree->sb = sb;
	tree->cnid = id;
	inode = FUNC6(sb, id);
	if (FUNC2(inode))
		goto free_tree;
	tree->inode = inode;

	if (!FUNC0(tree->inode)->first_blocks) {
		FUNC14("invalid btree extent records (0 size)\n");
		goto free_inode;
	}

	mapping = tree->inode->i_mapping;
	page = FUNC16(mapping, 0, NULL);
	if (FUNC2(page))
		goto free_inode;

	/* Load the header */
	head = (struct hfs_btree_header_rec *)(FUNC10(page) +
		sizeof(struct hfs_bnode_desc));
	tree->root = FUNC4(head->root);
	tree->leaf_count = FUNC4(head->leaf_count);
	tree->leaf_head = FUNC4(head->leaf_head);
	tree->leaf_tail = FUNC4(head->leaf_tail);
	tree->node_count = FUNC4(head->node_count);
	tree->free_nodes = FUNC4(head->free_nodes);
	tree->attributes = FUNC4(head->attributes);
	tree->node_size = FUNC3(head->node_size);
	tree->max_key_len = FUNC3(head->max_key_len);
	tree->depth = FUNC3(head->depth);

	/* Verify the tree and set the correct compare function */
	switch (id) {
	case HFSPLUS_EXT_CNID:
		if (tree->max_key_len != HFSPLUS_EXT_KEYLEN - sizeof(u16)) {
			FUNC14("invalid extent max_key_len %d\n",
				tree->max_key_len);
			goto fail_page;
		}
		if (tree->attributes & HFS_TREE_VARIDXKEYS) {
			FUNC14("invalid extent btree flag\n");
			goto fail_page;
		}

		tree->keycmp = hfsplus_ext_cmp_key;
		break;
	case HFSPLUS_CAT_CNID:
		if (tree->max_key_len != HFSPLUS_CAT_KEYLEN - sizeof(u16)) {
			FUNC14("invalid catalog max_key_len %d\n",
				tree->max_key_len);
			goto fail_page;
		}
		if (!(tree->attributes & HFS_TREE_VARIDXKEYS)) {
			FUNC14("invalid catalog btree flag\n");
			goto fail_page;
		}

		if (FUNC19(HFSPLUS_SB_HFSX, &FUNC1(sb)->flags) &&
		    (head->key_type == HFSPLUS_KEY_BINARY))
			tree->keycmp = hfsplus_cat_bin_cmp_key;
		else {
			tree->keycmp = hfsplus_cat_case_cmp_key;
			FUNC17(HFSPLUS_SB_CASEFOLD, &FUNC1(sb)->flags);
		}
		break;
	case HFSPLUS_ATTR_CNID:
		if (tree->max_key_len != HFSPLUS_ATTR_KEYLEN - sizeof(u16)) {
			FUNC14("invalid attributes max_key_len %d\n",
				tree->max_key_len);
			goto fail_page;
		}
		tree->keycmp = hfsplus_attr_bin_cmp_key;
		break;
	default:
		FUNC14("unknown B*Tree requested\n");
		goto fail_page;
	}

	if (!(tree->attributes & HFS_TREE_BIGKEYS)) {
		FUNC14("invalid btree flag\n");
		goto fail_page;
	}

	size = tree->node_size;
	if (!FUNC8(size))
		goto fail_page;
	if (!tree->node_count)
		goto fail_page;

	tree->node_size_shift = FUNC5(size) - 1;

	tree->pages_per_bnode =
		(tree->node_size + PAGE_SIZE - 1) >>
		PAGE_SHIFT;

	FUNC11(page);
	FUNC15(page);
	return tree;

 fail_page:
	FUNC15(page);
 free_inode:
	tree->inode->i_mapping->a_ops = &hfsplus_aops;
	FUNC7(tree->inode);
 free_tree:
	FUNC9(tree);
	return NULL;
}