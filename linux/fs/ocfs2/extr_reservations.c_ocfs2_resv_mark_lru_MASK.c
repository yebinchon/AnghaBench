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
struct ocfs2_reservation_map {int /*<<< orphan*/  m_lru; } ;
struct ocfs2_alloc_reservation {int /*<<< orphan*/  r_lru; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  resv_lock ; 

__attribute__((used)) static void FUNC4(struct ocfs2_reservation_map *resmap,
				struct ocfs2_alloc_reservation *resv)
{
	FUNC0(&resv_lock);

	if (!FUNC3(&resv->r_lru))
		FUNC2(&resv->r_lru);

	FUNC1(&resv->r_lru, &resmap->m_lru);
}