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
struct rb_root {int dummy; } ;
struct pnfs_block_extent {int /*<<< orphan*/  be_device; int /*<<< orphan*/  be_node; scalar_t__ be_length; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pnfs_block_extent*,struct pnfs_block_extent*) ; 
 struct pnfs_block_extent* FUNC1 (struct pnfs_block_extent*) ; 
 int /*<<< orphan*/  FUNC2 (struct pnfs_block_extent*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct rb_root*) ; 

__attribute__((used)) static struct pnfs_block_extent *
FUNC5(struct rb_root *root, struct pnfs_block_extent *be)
{
	struct pnfs_block_extent *right = FUNC1(be);

	if (right && FUNC0(be, right)) {
		be->be_length += right->be_length;
		FUNC4(&right->be_node, root);
		FUNC3(right->be_device);
		FUNC2(right);
	}

	return be;
}