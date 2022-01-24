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
struct lruvec {int dummy; } ;
typedef  int /*<<< orphan*/  pg_data_t ;
typedef  enum node_stat_item { ____Placeholder_node_stat_item } node_stat_item ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lruvec*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 struct lruvec* FUNC2 (int /*<<< orphan*/ *,struct mem_cgroup*) ; 
 struct mem_cgroup* FUNC3 (struct page*) ; 
 int /*<<< orphan*/ * FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct mem_cgroup* root_mem_cgroup ; 
 struct page* FUNC7 (void*) ; 

void FUNC8(void *p, enum node_stat_item idx, int val)
{
	struct page *page = FUNC7(p);
	pg_data_t *pgdat = FUNC4(page);
	struct mem_cgroup *memcg;
	struct lruvec *lruvec;

	FUNC5();
	memcg = FUNC3(page);

	/* Untracked pages have no memcg, no lruvec. Update only the node */
	if (!memcg || memcg == root_mem_cgroup) {
		FUNC1(pgdat, idx, val);
	} else {
		lruvec = FUNC2(pgdat, memcg);
		FUNC0(lruvec, idx, val);
	}
	FUNC6();
}