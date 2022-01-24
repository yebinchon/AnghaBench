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
struct pglist_data {int dummy; } ;
struct page {int dummy; } ;
struct mem_cgroup {int dummy; } ;
struct lruvec {int /*<<< orphan*/  inactive_age; } ;

/* Variables and functions */
 int FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct page*) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct mem_cgroup*) ; 
 struct lruvec* FUNC6 (struct pglist_data*,struct mem_cgroup*) ; 
 void* FUNC7 (int,struct pglist_data*,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct page*) ; 
 struct mem_cgroup* FUNC9 (struct page*) ; 
 struct pglist_data* FUNC10 (struct page*) ; 

void *FUNC11(struct page *page)
{
	struct pglist_data *pgdat = FUNC10(page);
	struct mem_cgroup *memcg = FUNC9(page);
	int memcgid = FUNC5(memcg);
	unsigned long eviction;
	struct lruvec *lruvec;

	/* Page is fully exclusive and pins page->mem_cgroup */
	FUNC3(FUNC0(page), page);
	FUNC3(FUNC8(page), page);
	FUNC3(!FUNC1(page), page);

	lruvec = FUNC6(pgdat, memcg);
	eviction = FUNC4(&lruvec->inactive_age);
	return FUNC7(memcgid, pgdat, eviction, FUNC2(page));
}