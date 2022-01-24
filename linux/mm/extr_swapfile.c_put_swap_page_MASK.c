#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ swp_entry_t ;
struct swap_info_struct {unsigned char* swap_map; int /*<<< orphan*/  lock; } ;
struct swap_cluster_info {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 unsigned long SWAPFILE_CLUSTER ; 
 unsigned char SWAP_HAS_CACHE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct swap_info_struct*,unsigned long,unsigned char) ; 
 struct swap_info_struct* FUNC2 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (struct swap_cluster_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct swap_cluster_info*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 struct swap_cluster_info* FUNC7 (struct swap_info_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct swap_info_struct*,unsigned long) ; 
 unsigned long FUNC13 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC14 (struct swap_info_struct*,struct swap_cluster_info*) ; 

void FUNC15(struct page *page, swp_entry_t entry)
{
	unsigned long offset = FUNC13(entry);
	unsigned long idx = offset / SWAPFILE_CLUSTER;
	struct swap_cluster_info *ci;
	struct swap_info_struct *si;
	unsigned char *map;
	unsigned int i, free_entries = 0;
	unsigned char val;
	int size = FUNC11(FUNC6(page));

	si = FUNC2(entry);
	if (!si)
		return;

	ci = FUNC7(si, offset);
	if (size == SWAPFILE_CLUSTER) {
		FUNC0(!FUNC4(ci));
		map = si->swap_map + offset;
		for (i = 0; i < SWAPFILE_CLUSTER; i++) {
			val = map[i];
			FUNC0(!(val & SWAP_HAS_CACHE));
			if (val == SWAP_HAS_CACHE)
				free_entries++;
		}
		FUNC3(ci);
		if (free_entries == SWAPFILE_CLUSTER) {
			FUNC14(si, ci);
			FUNC9(&si->lock);
			FUNC8(entry, SWAPFILE_CLUSTER);
			FUNC12(si, idx);
			FUNC10(&si->lock);
			return;
		}
	}
	for (i = 0; i < size; i++, entry.val++) {
		if (!FUNC1(si, offset + i, SWAP_HAS_CACHE)) {
			FUNC14(si, ci);
			FUNC5(entry);
			if (i == size - 1)
				return;
			FUNC7(si, offset);
		}
	}
	FUNC14(si, ci);
}