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
struct rmap_walk_control {void* arg; int /*<<< orphan*/  invalid_vma; int /*<<< orphan*/  anon_lock; int /*<<< orphan*/  rmap_one; } ;
struct page_referenced_arg {unsigned long vm_flags; int referenced; int /*<<< orphan*/  mapcount; struct mem_cgroup* memcg; } ;
struct page {int dummy; } ;
struct mem_cgroup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  invalid_page_referenced_vma ; 
 int /*<<< orphan*/  page_lock_anon_vma_read ; 
 int /*<<< orphan*/  page_referenced_one ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,struct rmap_walk_control*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

int FUNC7(struct page *page,
		    int is_locked,
		    struct mem_cgroup *memcg,
		    unsigned long *vm_flags)
{
	int we_locked = 0;
	struct page_referenced_arg pra = {
		.mapcount = FUNC4(page),
		.memcg = memcg,
	};
	struct rmap_walk_control rwc = {
		.rmap_one = page_referenced_one,
		.arg = (void *)&pra,
		.anon_lock = page_lock_anon_vma_read,
	};

	*vm_flags = 0;
	if (!pra.mapcount)
		return 0;

	if (!FUNC2(page))
		return 0;

	if (!is_locked && (!FUNC0(page) || FUNC1(page))) {
		we_locked = FUNC5(page);
		if (!we_locked)
			return 1;
	}

	/*
	 * If we are reclaiming on behalf of a cgroup, skip
	 * counting on behalf of references from different
	 * cgroups
	 */
	if (memcg) {
		rwc.invalid_vma = invalid_page_referenced_vma;
	}

	FUNC3(page, &rwc);
	*vm_flags = pra.vm_flags;

	if (we_locked)
		FUNC6(page);

	return pra.referenced;
}