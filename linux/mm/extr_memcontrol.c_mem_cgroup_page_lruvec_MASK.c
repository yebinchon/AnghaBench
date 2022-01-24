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
struct lruvec {struct pglist_data* pgdat; } ;
struct pglist_data {struct lruvec lruvec; } ;
struct page {struct mem_cgroup* mem_cgroup; } ;
struct mem_cgroup_per_node {struct lruvec lruvec; } ;
struct mem_cgroup {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 struct mem_cgroup_per_node* FUNC1 (struct mem_cgroup*,struct page*) ; 
 struct mem_cgroup* root_mem_cgroup ; 
 scalar_t__ FUNC2 (int) ; 

struct lruvec *FUNC3(struct page *page, struct pglist_data *pgdat)
{
	struct mem_cgroup_per_node *mz;
	struct mem_cgroup *memcg;
	struct lruvec *lruvec;

	if (FUNC0()) {
		lruvec = &pgdat->lruvec;
		goto out;
	}

	memcg = page->mem_cgroup;
	/*
	 * Swapcache readahead pages are added to the LRU - and
	 * possibly migrated - before they are charged.
	 */
	if (!memcg)
		memcg = root_mem_cgroup;

	mz = FUNC1(memcg, page);
	lruvec = &mz->lruvec;
out:
	/*
	 * Since a node can be onlined after the mem_cgroup was created,
	 * we have to be prepared to initialize lruvec->zone here;
	 * and if offlined then reonlined, we need to reinitialize it.
	 */
	if (FUNC2(lruvec->pgdat != pgdat))
		lruvec->pgdat = pgdat;
	return lruvec;
}