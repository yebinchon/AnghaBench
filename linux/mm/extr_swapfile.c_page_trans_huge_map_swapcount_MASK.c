#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ swp_entry_t ;
struct swap_info_struct {unsigned char* swap_map; } ;
struct swap_cluster_info {int dummy; } ;
struct page {int /*<<< orphan*/  _mapcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_THP_SWAP ; 
 int HPAGE_PMD_NR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct page*) ; 
 struct swap_info_struct* FUNC6 (TYPE_1__) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 struct page* FUNC8 (struct page*) ; 
 int FUNC9 (struct page*) ; 
 scalar_t__ FUNC10 (int) ; 
 struct swap_cluster_info* FUNC11 (struct swap_info_struct*,unsigned long) ; 
 int FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int FUNC14 (struct page*) ; 
 int FUNC15 (struct page*,int*) ; 
 int FUNC16 (unsigned char) ; 
 unsigned long FUNC17 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC18 (struct swap_cluster_info*) ; 

__attribute__((used)) static int FUNC19(struct page *page, int *total_mapcount,
					 int *total_swapcount)
{
	int i, map_swapcount, _total_mapcount, _total_swapcount;
	unsigned long offset = 0;
	struct swap_info_struct *si;
	struct swap_cluster_info *ci = NULL;
	unsigned char *map = NULL;
	int mapcount, swapcount = 0;

	/* hugetlbfs shouldn't call it */
	FUNC5(FUNC2(page), page);

	if (!FUNC0(CONFIG_THP_SWAP) || FUNC10(!FUNC4(page))) {
		mapcount = FUNC15(page, total_mapcount);
		if (FUNC3(page))
			swapcount = FUNC14(page);
		if (total_swapcount)
			*total_swapcount = swapcount;
		return mapcount + swapcount;
	}

	page = FUNC8(page);

	_total_mapcount = _total_swapcount = map_swapcount = 0;
	if (FUNC3(page)) {
		swp_entry_t entry;

		entry.val = FUNC13(page);
		si = FUNC6(entry);
		if (si) {
			map = si->swap_map;
			offset = FUNC17(entry);
		}
	}
	if (map)
		ci = FUNC11(si, offset);
	for (i = 0; i < HPAGE_PMD_NR; i++) {
		mapcount = FUNC7(&page[i]._mapcount) + 1;
		_total_mapcount += mapcount;
		if (map) {
			swapcount = FUNC16(map[offset + i]);
			_total_swapcount += swapcount;
		}
		map_swapcount = FUNC12(map_swapcount, mapcount + swapcount);
	}
	FUNC18(ci);
	if (FUNC1(page)) {
		map_swapcount -= 1;
		_total_mapcount -= HPAGE_PMD_NR;
	}
	mapcount = FUNC9(page);
	map_swapcount += mapcount;
	_total_mapcount += mapcount;
	if (total_mapcount)
		*total_mapcount = _total_mapcount;
	if (total_swapcount)
		*total_swapcount = _total_swapcount;

	return map_swapcount;
}