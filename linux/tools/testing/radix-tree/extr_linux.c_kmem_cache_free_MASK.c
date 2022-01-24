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
struct radix_tree_node {struct radix_tree_node* parent; } ;
struct kmem_cache {int nr_objs; int /*<<< orphan*/  lock; struct radix_tree_node* objs; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  POISON_FREE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ kmalloc_verbose ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nr_allocated ; 
 int /*<<< orphan*/  FUNC3 (char*,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct kmem_cache *cachep, void *objp)
{
	FUNC0(objp);
	FUNC6(&nr_allocated);
	if (kmalloc_verbose)
		FUNC3("Freeing %p to slab\n", objp);
	FUNC4(&cachep->lock);
	if (cachep->nr_objs > 10) {
		FUNC2(objp, POISON_FREE, cachep->size);
		FUNC1(objp);
	} else {
		struct radix_tree_node *node = objp;
		cachep->nr_objs++;
		node->parent = cachep->objs;
		cachep->objs = node;
	}
	FUNC5(&cachep->lock);
}