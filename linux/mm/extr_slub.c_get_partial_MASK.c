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
struct kmem_cache_cpu {int dummy; } ;
struct kmem_cache {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int NUMA_NO_NODE ; 
 void* FUNC0 (struct kmem_cache*,int /*<<< orphan*/ ,struct kmem_cache_cpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kmem_cache*,int) ; 
 void* FUNC2 (struct kmem_cache*,int /*<<< orphan*/ ,struct kmem_cache_cpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 () ; 

__attribute__((used)) static void *FUNC6(struct kmem_cache *s, gfp_t flags, int node,
		struct kmem_cache_cpu *c)
{
	void *object;
	int searchnode = node;

	if (node == NUMA_NO_NODE)
		searchnode = FUNC5();
	else if (!FUNC3(node))
		searchnode = FUNC4(node);

	object = FUNC2(s, FUNC1(s, searchnode), c, flags);
	if (object || node != NUMA_NO_NODE)
		return object;

	return FUNC0(s, flags, c);
}