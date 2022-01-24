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
struct page {int /*<<< orphan*/  lru; } ;
struct hstate {int /*<<< orphan*/ * nr_huge_pages_node; int /*<<< orphan*/  nr_huge_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  HUGETLB_PAGE_DTOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hugetlb_lock ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct hstate *h, struct page *page, int nid)
{
	FUNC0(&page->lru);
	FUNC1(page, HUGETLB_PAGE_DTOR);
	FUNC3(&hugetlb_lock);
	FUNC2(page, NULL);
	h->nr_huge_pages++;
	h->nr_huge_pages_node[nid]++;
	FUNC4(&hugetlb_lock);
}