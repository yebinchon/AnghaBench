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
struct ocfs2_reservation_map {unsigned int m_bitmap_len; char* m_disk_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ocfs2_reservation_map*) ; 
 scalar_t__ FUNC1 (struct ocfs2_reservation_map*) ; 
 int /*<<< orphan*/  resv_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ocfs2_reservation_map *resmap,
			  unsigned int clen, char *disk_bitmap)
{
	if (FUNC1(resmap))
		return;

	FUNC2(&resv_lock);

	FUNC0(resmap);
	resmap->m_bitmap_len = clen;
	resmap->m_disk_bitmap = disk_bitmap;

	FUNC3(&resv_lock);
}