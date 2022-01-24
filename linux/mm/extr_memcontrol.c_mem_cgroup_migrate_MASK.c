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
struct page {struct mem_cgroup* mem_cgroup; } ;
struct mem_cgroup {int /*<<< orphan*/  css; int /*<<< orphan*/  memsw; int /*<<< orphan*/  memory; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,struct mem_cgroup*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC6 () ; 
 int FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct mem_cgroup*,struct page*,int,unsigned int) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct mem_cgroup*,struct page*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned int) ; 

void FUNC14(struct page *oldpage, struct page *newpage)
{
	struct mem_cgroup *memcg;
	unsigned int nr_pages;
	bool compound;
	unsigned long flags;

	FUNC3(!FUNC1(oldpage), oldpage);
	FUNC3(!FUNC1(newpage), newpage);
	FUNC3(FUNC0(oldpage) != FUNC0(newpage), newpage);
	FUNC3(FUNC2(oldpage) != FUNC2(newpage),
		       newpage);

	if (FUNC11())
		return;

	/* Page cache replacement: new page already charged? */
	if (newpage->mem_cgroup)
		return;

	/* Swapcache readahead pages can get replaced before being charged */
	memcg = oldpage->mem_cgroup;
	if (!memcg)
		return;

	/* Force-charge the new page. The old one will be freed soon */
	compound = FUNC2(newpage);
	nr_pages = compound ? FUNC7(newpage) : 1;

	FUNC13(&memcg->memory, nr_pages);
	if (FUNC6())
		FUNC13(&memcg->memsw, nr_pages);
	FUNC5(&memcg->css, nr_pages);

	FUNC4(newpage, memcg, false);

	FUNC9(flags);
	FUNC10(memcg, newpage, compound, nr_pages);
	FUNC12(memcg, newpage);
	FUNC8(flags);
}