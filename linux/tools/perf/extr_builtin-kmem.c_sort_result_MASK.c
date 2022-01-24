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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ kmem_page ; 
 scalar_t__ kmem_slab ; 
 scalar_t__ live_page ; 
 int /*<<< orphan*/  page_alloc_sort ; 
 int /*<<< orphan*/  page_alloc_sorted ; 
 int /*<<< orphan*/  page_alloc_tree ; 
 int /*<<< orphan*/  page_caller_sort ; 
 int /*<<< orphan*/  page_caller_sorted ; 
 int /*<<< orphan*/  page_caller_tree ; 
 int /*<<< orphan*/  page_live_tree ; 
 int /*<<< orphan*/  root_alloc_sorted ; 
 int /*<<< orphan*/  root_alloc_stat ; 
 int /*<<< orphan*/  root_caller_sorted ; 
 int /*<<< orphan*/  root_caller_stat ; 
 int /*<<< orphan*/  slab_alloc_sort ; 
 int /*<<< orphan*/  slab_caller_sort ; 

__attribute__((used)) static void FUNC2(void)
{
	if (kmem_slab) {
		FUNC1(&root_alloc_stat, &root_alloc_sorted,
				   &slab_alloc_sort);
		FUNC1(&root_caller_stat, &root_caller_sorted,
				   &slab_caller_sort);
	}
	if (kmem_page) {
		if (live_page)
			FUNC0(&page_live_tree, &page_alloc_sorted,
					   &page_alloc_sort);
		else
			FUNC0(&page_alloc_tree, &page_alloc_sorted,
					   &page_alloc_sort);

		FUNC0(&page_caller_tree, &page_caller_sorted,
				   &page_caller_sort);
	}
}