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
struct ocfs2_alloc_reservation {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ocfs2_reservation_map*,struct ocfs2_alloc_reservation*) ; 
 int /*<<< orphan*/  resv_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ocfs2_reservation_map *resmap,
			struct ocfs2_alloc_reservation *resv)
{
	if (resv) {
		FUNC1(&resv_lock);
		FUNC0(resmap, resv);
		FUNC2(&resv_lock);
	}
}