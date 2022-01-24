#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vmap_block {TYPE_1__* va; } ;
struct TYPE_2__ {int /*<<< orphan*/  va_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct vmap_block*,int /*<<< orphan*/ ) ; 
 struct vmap_block* FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  rcu_head ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vmap_block_tree ; 
 int /*<<< orphan*/  vmap_block_tree_lock ; 

__attribute__((used)) static void FUNC7(struct vmap_block *vb)
{
	struct vmap_block *tmp;
	unsigned long vb_idx;

	vb_idx = FUNC1(vb->va->va_start);
	FUNC5(&vmap_block_tree_lock);
	tmp = FUNC4(&vmap_block_tree, vb_idx);
	FUNC6(&vmap_block_tree_lock);
	FUNC0(tmp != vb);

	FUNC2(vb->va);
	FUNC3(vb, rcu_head);
}