#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct page {int inuse; int /*<<< orphan*/  objects; scalar_t__ frozen; struct kmem_cache_node* freelist; } ;
struct kmem_cache_node {int dummy; } ;
struct TYPE_8__ {int size; struct kmem_cache_node** node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DEACTIVATE_TO_HEAD ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  SLUB_RED_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (struct kmem_cache_node*,struct page*,int /*<<< orphan*/ ) ; 
 struct kmem_cache_node* FUNC2 (TYPE_1__*,struct kmem_cache_node*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kmem_cache_node*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct kmem_cache_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct kmem_cache_node*) ; 
 struct kmem_cache_node* FUNC7 (TYPE_1__*,struct kmem_cache_node*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* kmem_cache_node ; 
 struct page* FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

__attribute__((used)) static void FUNC11(int node)
{
	struct page *page;
	struct kmem_cache_node *n;

	FUNC0(kmem_cache_node->size < sizeof(struct kmem_cache_node));

	page = FUNC8(kmem_cache_node, GFP_NOWAIT, node);

	FUNC0(!page);
	if (FUNC9(page) != node) {
		FUNC10("SLUB: Unable to allocate memory from node %d\n", node);
		FUNC10("SLUB: Allocating a useless per node structure in order to be able to continue\n");
	}

	n = page->freelist;
	FUNC0(!n);
#ifdef CONFIG_SLUB_DEBUG
	init_object(kmem_cache_node, n, SLUB_RED_ACTIVE);
	init_tracking(kmem_cache_node, n);
#endif
	n = FUNC7(kmem_cache_node, n, sizeof(struct kmem_cache_node),
		      GFP_KERNEL);
	page->freelist = FUNC2(kmem_cache_node, n);
	page->inuse = 1;
	page->frozen = 0;
	kmem_cache_node->node[node] = n;
	FUNC4(n);
	FUNC3(kmem_cache_node, node, page->objects);

	/*
	 * No locks need to be taken here as it has just been
	 * initialized and there is no concurrent access.
	 */
	FUNC1(n, page, DEACTIVATE_TO_HEAD);
}