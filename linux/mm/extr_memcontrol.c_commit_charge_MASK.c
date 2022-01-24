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
struct mem_cgroup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mem_cgroup*,struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,int) ; 

__attribute__((used)) static void FUNC3(struct page *page, struct mem_cgroup *memcg,
			  bool lrucare)
{
	int isolated;

	FUNC0(page->mem_cgroup, page);

	/*
	 * In some cases, SwapCache and FUSE(splice_buf->radixtree), the page
	 * may already be on some other mem_cgroup's LRU.  Take care of it.
	 */
	if (lrucare)
		FUNC1(page, &isolated);

	/*
	 * Nobody should be changing or seriously looking at
	 * page->mem_cgroup at this point:
	 *
	 * - the page is uncharged
	 *
	 * - the page is off-LRU
	 *
	 * - an anonymous fault has exclusive page access, except for
	 *   a locked page table
	 *
	 * - a page cache insertion, a swapin fault, or a migration
	 *   have the page locked
	 */
	page->mem_cgroup = memcg;

	if (lrucare)
		FUNC2(page, isolated);
}