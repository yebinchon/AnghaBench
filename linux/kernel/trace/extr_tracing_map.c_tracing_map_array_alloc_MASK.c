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
struct tracing_map_array {int entry_size_shift; int entries_per_page; unsigned int n_pages; int entry_shift; int entry_mask; void** pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 void* FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 void** FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 struct tracing_map_array* FUNC3 (int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct tracing_map_array*) ; 

struct tracing_map_array *FUNC6(unsigned int n_elts,
						  unsigned int entry_size)
{
	struct tracing_map_array *a;
	unsigned int i;

	a = FUNC3(sizeof(*a), GFP_KERNEL);
	if (!a)
		return NULL;

	a->entry_size_shift = FUNC0(FUNC4(entry_size) - 1);
	a->entries_per_page = PAGE_SIZE / (1 << a->entry_size_shift);
	a->n_pages = n_elts / a->entries_per_page;
	if (!a->n_pages)
		a->n_pages = 1;
	a->entry_shift = FUNC0(a->entries_per_page) - 1;
	a->entry_mask = (1 << a->entry_shift) - 1;

	a->pages = FUNC2(a->n_pages, sizeof(void *), GFP_KERNEL);
	if (!a->pages)
		goto free;

	for (i = 0; i < a->n_pages; i++) {
		a->pages[i] = (void *)FUNC1(GFP_KERNEL);
		if (!a->pages[i])
			goto free;
	}
 out:
	return a;
 free:
	FUNC5(a);
	a = NULL;

	goto out;
}