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
struct kmem_cache_node {scalar_t__ free_limit; scalar_t__ next_reap; int /*<<< orphan*/  list_lock; } ;
struct kmem_cache {int batchcount; struct kmem_cache_node** node; scalar_t__ num; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long REAPTIMEOUT_NODE ; 
 struct kmem_cache_node* FUNC0 (struct kmem_cache*,int) ; 
 scalar_t__ jiffies ; 
 struct kmem_cache_node* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kmem_cache_node*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct kmem_cache *cachep, int node, gfp_t gfp)
{
	struct kmem_cache_node *n;

	/*
	 * Set up the kmem_cache_node for cpu before we can
	 * begin anything. Make sure some other cpu on this
	 * node has not already allocated this
	 */
	n = FUNC0(cachep, node);
	if (n) {
		FUNC4(&n->list_lock);
		n->free_limit = (1 + FUNC3(node)) * cachep->batchcount +
				cachep->num;
		FUNC5(&n->list_lock);

		return 0;
	}

	n = FUNC1(sizeof(struct kmem_cache_node), gfp, node);
	if (!n)
		return -ENOMEM;

	FUNC2(n);
	n->next_reap = jiffies + REAPTIMEOUT_NODE +
		    ((unsigned long)cachep) % REAPTIMEOUT_NODE;

	n->free_limit =
		(1 + FUNC3(node)) * cachep->batchcount + cachep->num;

	/*
	 * The kmem_cache_nodes don't come and go as CPUs
	 * come and go.  slab_mutex is sufficient
	 * protection here.
	 */
	cachep->node[node] = n;

	return 0;
}