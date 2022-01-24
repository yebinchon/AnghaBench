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
struct hfs_find_data {int record; int keylength; struct hfs_bnode* bnode; int /*<<< orphan*/  search_key; int /*<<< orphan*/  keyoffset; struct hfs_btree* tree; } ;
struct hfs_btree {int attributes; scalar_t__ cnid; int max_key_len; int node_size; scalar_t__ root; } ;
struct hfs_bnode {int num_recs; scalar_t__ parent; int /*<<< orphan*/  this; } ;
typedef  int /*<<< orphan*/  cnid ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  BNODE_MOD ; 
 int ENOENT ; 
 scalar_t__ HFSPLUS_ATTR_CNID ; 
 int HFS_TREE_VARIDXKEYS ; 
 scalar_t__ FUNC0 (struct hfs_bnode*) ; 
 int FUNC1 (struct hfs_bnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct hfs_bnode*,struct hfs_find_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hfs_bnode*,int /*<<< orphan*/ ,struct hfs_bnode*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hfs_bnode*) ; 
 void* FUNC6 (struct hfs_btree*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct hfs_bnode*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct hfs_bnode*) ; 
 int /*<<< orphan*/  FUNC9 (struct hfs_bnode*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct hfs_bnode*,int) ; 
 struct hfs_bnode* FUNC11 (struct hfs_find_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct hfs_bnode*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct hfs_find_data*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (struct hfs_btree*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  hfs_find_rec_by_key ; 

__attribute__((used)) static int FUNC16(struct hfs_find_data *fd)
{
	struct hfs_btree *tree;
	struct hfs_bnode *node, *new_node, *parent;
	int newkeylen, diff;
	int rec, rec_off, end_rec_off;
	int start_off, end_off;

	tree = fd->tree;
	node = fd->bnode;
	new_node = NULL;
	if (!node->parent)
		return 0;

again:
	parent = FUNC6(tree, node->parent);
	if (FUNC0(parent))
		return FUNC1(parent);
	FUNC2(parent, fd, hfs_find_rec_by_key);
	if (fd->record < 0)
		return -ENOENT;
	FUNC5(parent);
	rec = fd->record;

	/* size difference between old and new key */
	if ((tree->attributes & HFS_TREE_VARIDXKEYS) ||
				(tree->cnid == HFSPLUS_ATTR_CNID))
		newkeylen = FUNC10(node, 14) + 2;
	else
		fd->keylength = newkeylen = tree->max_key_len + 2;
	FUNC15(BNODE_MOD, "update_rec: %d, %d, %d\n",
		rec, fd->keylength, newkeylen);

	rec_off = tree->node_size - (rec + 2) * 2;
	end_rec_off = tree->node_size - (parent->num_recs + 1) * 2;
	diff = newkeylen - fd->keylength;
	if (!diff)
		goto skip;
	if (diff > 0) {
		end_off = FUNC10(parent, end_rec_off);
		if (end_rec_off - end_off < diff) {

			FUNC15(BNODE_MOD, "splitting index node\n");
			fd->bnode = parent;
			new_node = FUNC11(fd);
			if (FUNC0(new_node))
				return FUNC1(new_node);
			parent = fd->bnode;
			rec = fd->record;
			rec_off = tree->node_size - (rec + 2) * 2;
			end_rec_off = tree->node_size -
				(parent->num_recs + 1) * 2;
		}
	}

	end_off = start_off = FUNC10(parent, rec_off);
	FUNC12(parent, rec_off, start_off + diff);
	start_off -= 4;	/* move previous cnid too */

	while (rec_off > end_rec_off) {
		rec_off -= 2;
		end_off = FUNC10(parent, rec_off);
		FUNC12(parent, rec_off, end_off + diff);
	}
	FUNC7(parent, start_off + diff, start_off,
		       end_off - start_off);
skip:
	FUNC4(parent, fd->keyoffset, node, 14, newkeylen);
	FUNC5(parent);

	FUNC8(node);
	node = parent;

	if (new_node) {
		__be32 cnid;

		if (!new_node->parent) {
			FUNC14(tree);
			new_node->parent = tree->root;
		}
		fd->bnode = FUNC6(tree, new_node->parent);
		/* create index key and entry */
		FUNC9(new_node, fd->search_key, 14);
		cnid = FUNC3(new_node->this);

		FUNC2(fd->bnode, fd, hfs_find_rec_by_key);
		FUNC13(fd, &cnid, sizeof(cnid));
		FUNC8(fd->bnode);
		FUNC8(new_node);

		if (!rec) {
			if (new_node == node)
				goto out;
			/* restore search_key */
			FUNC9(node, fd->search_key, 14);
		}
		new_node = NULL;
	}

	if (!rec && node->parent)
		goto again;
out:
	fd->bnode = node;
	return 0;
}