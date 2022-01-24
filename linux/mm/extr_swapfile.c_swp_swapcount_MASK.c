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
typedef  int /*<<< orphan*/  swp_entry_t ;
struct swap_info_struct {int /*<<< orphan*/ * swap_map; } ;
struct swap_cluster_info {int dummy; } ;
struct page {int dummy; } ;
typedef  size_t pgoff_t ;

/* Variables and functions */
 int COUNT_CONTINUED ; 
 size_t PAGE_MASK ; 
 int SWAP_CONT_MAX ; 
 int SWAP_MAP_MAX ; 
 scalar_t__ SWP_CONTINUED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct swap_info_struct* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned char* FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 struct page* FUNC4 (struct page*,int /*<<< orphan*/ ) ; 
 struct swap_cluster_info* FUNC5 (struct swap_info_struct*,size_t) ; 
 int /*<<< orphan*/  lru ; 
 scalar_t__ FUNC6 (struct page*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct swap_info_struct*,struct swap_cluster_info*) ; 
 struct page* FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(swp_entry_t entry)
{
	int count, tmp_count, n;
	struct swap_info_struct *p;
	struct swap_cluster_info *ci;
	struct page *page;
	pgoff_t offset;
	unsigned char *map;

	p = FUNC1(entry);
	if (!p)
		return 0;

	offset = FUNC8(entry);

	ci = FUNC5(p, offset);

	count = FUNC7(p->swap_map[offset]);
	if (!(count & COUNT_CONTINUED))
		goto out;

	count &= ~COUNT_CONTINUED;
	n = SWAP_MAP_MAX + 1;

	page = FUNC10(p->swap_map + offset);
	offset &= ~PAGE_MASK;
	FUNC0(FUNC6(page) != SWP_CONTINUED);

	do {
		page = FUNC4(page, lru);
		map = FUNC2(page);
		tmp_count = map[offset];
		FUNC3(map);

		count += (tmp_count & ~COUNT_CONTINUED) * n;
		n *= (SWAP_CONT_MAX + 1);
	} while (tmp_count & COUNT_CONTINUED);
out:
	FUNC9(p, ci);
	return count;
}