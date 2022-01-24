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
struct hstate {int /*<<< orphan*/ * free_huge_pages_node; int /*<<< orphan*/  free_huge_pages; int /*<<< orphan*/ * hugepage_freelists; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct page*) ; 

__attribute__((used)) static void FUNC2(struct hstate *h, struct page *page)
{
	int nid = FUNC1(page);
	FUNC0(&page->lru, &h->hugepage_freelists[nid]);
	h->free_huge_pages++;
	h->free_huge_pages_node[nid]++;
}