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
struct ocfs2_reservation_map {unsigned int m_bitmap_len; } ;
struct ocfs2_alloc_reservation {int r_last_len; unsigned int r_last_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_reservation_map*,struct ocfs2_alloc_reservation*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_reservation_map*,struct ocfs2_alloc_reservation*,unsigned int) ; 
 int FUNC3 (struct ocfs2_alloc_reservation*) ; 

__attribute__((used)) static void FUNC4(struct ocfs2_reservation_map *resmap,
				   struct ocfs2_alloc_reservation *resv,
				   unsigned int wanted)
{
	unsigned int goal = 0;

	FUNC0(!FUNC3(resv));

	/*
	 * Begin by trying to get a window as close to the previous
	 * one as possible. Using the most recent allocation as a
	 * start goal makes sense.
	 */
	if (resv->r_last_len) {
		goal = resv->r_last_start + resv->r_last_len;
		if (goal >= resmap->m_bitmap_len)
			goal = 0;
	}

	FUNC1(resmap, resv, goal, wanted);

	/* Search from last alloc didn't work, try once more from beginning. */
	if (FUNC3(resv) && goal != 0)
		FUNC1(resmap, resv, 0, wanted);

	if (FUNC3(resv)) {
		/*
		 * Still empty? Pull oldest one off the LRU, remove it from
		 * tree, put this one in it's place.
		 */
		FUNC2(resmap, resv, wanted);
	}

	FUNC0(FUNC3(resv));
}