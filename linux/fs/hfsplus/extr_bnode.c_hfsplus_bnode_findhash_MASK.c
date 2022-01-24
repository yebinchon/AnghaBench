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
typedef  scalar_t__ u32 ;
struct hfs_btree {scalar_t__ node_count; struct hfs_bnode** node_hash; } ;
struct hfs_bnode {scalar_t__ this; struct hfs_bnode* next_hash; } ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 

struct hfs_bnode *FUNC2(struct hfs_btree *tree, u32 cnid)
{
	struct hfs_bnode *node;

	if (cnid >= tree->node_count) {
		FUNC1("request for non-existent node %d in B*Tree\n",
		       cnid);
		return NULL;
	}

	for (node = tree->node_hash[FUNC0(cnid)];
			node; node = node->next_hash)
		if (node->this == cnid)
			return node;
	return NULL;
}