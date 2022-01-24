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
struct rb_root_cached {int dummy; } ;
struct anon_vma_chain {int /*<<< orphan*/  cached_vma_last; int /*<<< orphan*/  cached_vma_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct anon_vma_chain*,struct rb_root_cached*) ; 
 int /*<<< orphan*/  FUNC1 (struct anon_vma_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct anon_vma_chain*) ; 

void FUNC3(struct anon_vma_chain *node,
				   struct rb_root_cached *root)
{
#ifdef CONFIG_DEBUG_VM_RB
	node->cached_vma_start = avc_start_pgoff(node);
	node->cached_vma_last = avc_last_pgoff(node);
#endif
	FUNC0(node, root);
}