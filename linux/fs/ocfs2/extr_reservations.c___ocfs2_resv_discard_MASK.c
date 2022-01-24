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
struct ocfs2_alloc_reservation {scalar_t__ r_last_start; scalar_t__ r_last_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ocfs2_alloc_reservation*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_reservation_map*,struct ocfs2_alloc_reservation*) ; 
 int /*<<< orphan*/  resv_lock ; 

__attribute__((used)) static void FUNC3(struct ocfs2_reservation_map *resmap,
				 struct ocfs2_alloc_reservation *resv)
{
	FUNC1(&resv_lock);

	FUNC0(resv);
	/*
	 * last_len and last_start no longer make sense if
	 * we're changing the range of our allocations.
	 */
	resv->r_last_len = resv->r_last_start = 0;

	FUNC2(resmap, resv);
}