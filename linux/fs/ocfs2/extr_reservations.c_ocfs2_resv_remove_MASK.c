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
struct ocfs2_reservation_map {int /*<<< orphan*/  m_reservations; } ;
struct ocfs2_alloc_reservation {int r_flags; int /*<<< orphan*/  r_node; int /*<<< orphan*/  r_lru; } ;

/* Variables and functions */
 int OCFS2_RESV_FLAG_INUSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ocfs2_reservation_map *resmap,
			      struct ocfs2_alloc_reservation *resv)
{
	if (resv->r_flags & OCFS2_RESV_FLAG_INUSE) {
		FUNC0(&resv->r_lru);
		FUNC1(&resv->r_node, &resmap->m_reservations);
		resv->r_flags &= ~OCFS2_RESV_FLAG_INUSE;
	}
}