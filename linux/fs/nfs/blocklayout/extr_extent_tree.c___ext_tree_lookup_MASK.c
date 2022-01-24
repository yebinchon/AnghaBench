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
struct rb_root {struct rb_node* rb_node; } ;
struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;
struct pnfs_block_extent {scalar_t__ be_f_offset; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pnfs_block_extent*) ; 
 struct pnfs_block_extent* FUNC1 (struct rb_node*) ; 

__attribute__((used)) static bool
FUNC2(struct rb_root *root, sector_t isect,
		struct pnfs_block_extent *ret)
{
	struct rb_node *node;
	struct pnfs_block_extent *be;

	node = root->rb_node;
	while (node) {
		be = FUNC1(node);
		if (isect < be->be_f_offset)
			node = node->rb_left;
		else if (isect >= FUNC0(be))
			node = node->rb_right;
		else {
			*ret = *be;
			return true;
		}
	}

	return false;
}