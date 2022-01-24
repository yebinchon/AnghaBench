#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct bmap {int db_numag; int db_agpref; int* db_agfree; int /*<<< orphan*/ * db_active; scalar_t__ db_nfree; } ;
typedef  int s64 ;
struct TYPE_2__ {struct bmap* bmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bmap*) ; 
 int /*<<< orphan*/  FUNC1 (struct bmap*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct inode *ipbmap)
{
	s64 avgfree;
	int agpref;
	s64 hwm = 0;
	int i;
	int next_best = -1;
	struct bmap *bmp = FUNC2(ipbmap->i_sb)->bmap;

	FUNC0(bmp);

	/* determine the average number of free blocks within the ags. */
	avgfree = (u32)bmp->db_nfree / bmp->db_numag;

	/*
	 * if the current preferred ag does not have an active allocator
	 * and has at least average freespace, return it
	 */
	agpref = bmp->db_agpref;
	if ((FUNC3(&bmp->db_active[agpref]) == 0) &&
	    (bmp->db_agfree[agpref] >= avgfree))
		goto unlock;

	/* From the last preferred ag, find the next one with at least
	 * average free space.
	 */
	for (i = 0 ; i < bmp->db_numag; i++, agpref++) {
		if (agpref == bmp->db_numag)
			agpref = 0;

		if (FUNC3(&bmp->db_active[agpref]))
			/* open file is currently growing in this ag */
			continue;
		if (bmp->db_agfree[agpref] >= avgfree) {
			/* Return this one */
			bmp->db_agpref = agpref;
			goto unlock;
		} else if (bmp->db_agfree[agpref] > hwm) {
			/* Less than avg. freespace, but best so far */
			hwm = bmp->db_agfree[agpref];
			next_best = agpref;
		}
	}

	/*
	 * If no inactive ag was found with average freespace, use the
	 * next best
	 */
	if (next_best != -1)
		bmp->db_agpref = next_best;
	/* else leave db_agpref unchanged */
unlock:
	FUNC1(bmp);

	/* return the preferred group.
	 */
	return (bmp->db_agpref);
}