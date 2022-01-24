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
struct ocfs2_reservation_map {int dummy; } ;
struct ocfs2_alloc_reservation {unsigned int r_start; unsigned int r_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_reservation_map*,struct ocfs2_alloc_reservation*) ; 
 unsigned int FUNC2 (struct ocfs2_alloc_reservation*) ; 

__attribute__((used)) static void
	FUNC3(struct ocfs2_reservation_map *resmap,
				     struct ocfs2_alloc_reservation *resv,
				     unsigned int start, unsigned int end)
{
	unsigned int rhs = 0;
	unsigned int old_end = FUNC2(resv);

	FUNC0(start != resv->r_start || old_end < end);

	/*
	 * Completely used? We can remove it then.
	 */
	if (old_end == end) {
		FUNC1(resmap, resv);
		return;
	}

	rhs = old_end - end;

	/*
	 * This should have been trapped above.
	 */
	FUNC0(rhs == 0);

	resv->r_start = end + 1;
	resv->r_len = old_end - resv->r_start + 1;
}