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
struct pnfs_block_extent {scalar_t__ be_f_offset; scalar_t__ be_state; int /*<<< orphan*/  be_device; int /*<<< orphan*/  be_node; scalar_t__ be_length; int /*<<< orphan*/  be_v_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ PNFS_BLOCK_NONE_DATA ; 
 scalar_t__ FUNC1 (struct pnfs_block_extent*,struct pnfs_block_extent*) ; 
 scalar_t__ FUNC2 (struct pnfs_block_extent*) ; 
 struct pnfs_block_extent* FUNC3 (struct rb_node*) ; 
 struct pnfs_block_extent* FUNC4 (struct rb_root*,struct pnfs_block_extent*) ; 
 struct pnfs_block_extent* FUNC5 (struct rb_root*,struct pnfs_block_extent*) ; 
 int /*<<< orphan*/  FUNC6 (struct pnfs_block_extent*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct rb_root*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct rb_node*,struct rb_node**) ; 

__attribute__((used)) static void
FUNC10(struct rb_root *root,
		struct pnfs_block_extent *new, bool merge_ok)
{
	struct rb_node **p = &root->rb_node, *parent = NULL;
	struct pnfs_block_extent *be;

	while (*p) {
		parent = *p;
		be = FUNC3(parent);

		if (new->be_f_offset < be->be_f_offset) {
			if (merge_ok && FUNC1(new, be)) {
				be->be_f_offset = new->be_f_offset;
				if (be->be_state != PNFS_BLOCK_NONE_DATA)
					be->be_v_offset = new->be_v_offset;
				be->be_length += new->be_length;
				be = FUNC4(root, be);
				goto free_new;
			}
			p = &(*p)->rb_left;
		} else if (new->be_f_offset >= FUNC2(be)) {
			if (merge_ok && FUNC1(be, new)) {
				be->be_length += new->be_length;
				be = FUNC5(root, be);
				goto free_new;
			}
			p = &(*p)->rb_right;
		} else {
			FUNC0();
		}
	}

	FUNC9(&new->be_node, parent, p);
	FUNC8(&new->be_node, root);
	return;
free_new:
	FUNC7(new->be_device);
	FUNC6(new);
}