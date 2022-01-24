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
struct mem_cgroup {int dummy; } ;
struct lruvec {int /*<<< orphan*/  inactive_age; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct lruvec* FUNC2 (int /*<<< orphan*/ ,struct mem_cgroup*) ; 
 struct mem_cgroup* FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(struct page *page)
{
	struct mem_cgroup *memcg;
	struct lruvec *lruvec;

	FUNC5();
	/*
	 * Filter non-memcg pages here, e.g. unmap can call
	 * mark_page_accessed() on VDSO pages.
	 *
	 * XXX: See workingset_refault() - this should return
	 * root_mem_cgroup even for !CONFIG_MEMCG.
	 */
	memcg = FUNC3(page);
	if (!FUNC1() && !memcg)
		goto out;
	lruvec = FUNC2(FUNC4(page), memcg);
	FUNC0(&lruvec->inactive_age);
out:
	FUNC6();
}