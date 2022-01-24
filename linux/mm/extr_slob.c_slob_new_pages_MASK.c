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
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  NR_SLAB_UNRECLAIMABLE ; 
 int NUMA_NO_NODE ; 
 struct page* FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

__attribute__((used)) static void *FUNC5(gfp_t gfp, int order, int node)
{
	struct page *page;

#ifdef CONFIG_NUMA
	if (node != NUMA_NO_NODE)
		page = __alloc_pages_node(node, gfp, order);
	else
#endif
		page = FUNC1(gfp, order);

	if (!page)
		return NULL;

	FUNC2(FUNC4(page), NR_SLAB_UNRECLAIMABLE,
			    1 << order);
	return FUNC3(page);
}