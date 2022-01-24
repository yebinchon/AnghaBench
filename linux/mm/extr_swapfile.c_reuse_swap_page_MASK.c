#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ swp_entry_t ;
struct swap_info_struct {int flags; int /*<<< orphan*/  lock; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int SWP_STABLE_WRITES ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int,struct page*) ; 
 struct page* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int FUNC11 (struct page*) ; 
 int FUNC12 (struct page*,int*,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct swap_info_struct* FUNC14 (TYPE_1__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 

bool FUNC16(struct page *page, int *total_map_swapcount)
{
	int count, total_mapcount, total_swapcount;

	FUNC6(!FUNC1(page), page);
	if (FUNC15(FUNC0(page)))
		return false;
	count = FUNC12(page, &total_mapcount,
					      &total_swapcount);
	if (total_map_swapcount)
		*total_map_swapcount = total_mapcount + total_swapcount;
	if (count == 1 && FUNC2(page) &&
	    (FUNC9(!FUNC3(page)) ||
	     /* The remaining swap count will be freed soon */
	     total_swapcount == FUNC11(page))) {
		if (!FUNC4(page)) {
			page = FUNC7(page);
			FUNC8(page);
			FUNC5(page);
		} else {
			swp_entry_t entry;
			struct swap_info_struct *p;

			entry.val = FUNC10(page);
			p = FUNC14(entry);
			if (p->flags & SWP_STABLE_WRITES) {
				FUNC13(&p->lock);
				return false;
			}
			FUNC13(&p->lock);
		}
	}

	return count <= 1;
}