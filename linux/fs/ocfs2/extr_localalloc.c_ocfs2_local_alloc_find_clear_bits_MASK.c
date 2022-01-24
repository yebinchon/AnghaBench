#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ocfs2_reservation_map {int dummy; } ;
struct ocfs2_super {scalar_t__ osb_resv_level; struct ocfs2_reservation_map osb_la_resmap; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_total; } ;
struct TYPE_5__ {TYPE_1__ bitmap1; } ;
struct ocfs2_dinode {TYPE_2__ id1; } ;
struct ocfs2_alloc_reservation {int dummy; } ;
struct TYPE_6__ {void* la_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__* FUNC1 (struct ocfs2_dinode*) ; 
 int /*<<< orphan*/  OCFS2_RESV_FLAG_TMP ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (void*,int,int) ; 
 scalar_t__ FUNC4 (struct ocfs2_reservation_map*,struct ocfs2_alloc_reservation*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_reservation_map*,struct ocfs2_alloc_reservation*) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_alloc_reservation*) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_alloc_reservation*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

__attribute__((used)) static int FUNC10(struct ocfs2_super *osb,
				     struct ocfs2_dinode *alloc,
				     u32 *numbits,
				     struct ocfs2_alloc_reservation *resv)
{
	int numfound = 0, bitoff, left, startoff;
	int local_resv = 0;
	struct ocfs2_alloc_reservation r;
	void *bitmap = NULL;
	struct ocfs2_reservation_map *resmap = &osb->osb_la_resmap;

	if (!alloc->id1.bitmap1.i_total) {
		bitoff = -1;
		goto bail;
	}

	if (!resv) {
		local_resv = 1;
		FUNC6(&r);
		FUNC7(&r, OCFS2_RESV_FLAG_TMP);
		resv = &r;
	}

	numfound = *numbits;
	if (FUNC4(resmap, resv, &bitoff, &numfound) == 0) {
		if (numfound < *numbits)
			*numbits = numfound;
		goto bail;
	}

	/*
	 * Code error. While reservations are enabled, local
	 * allocation should _always_ go through them.
	 */
	FUNC0(osb->osb_resv_level != 0);

	/*
	 * Reservations are disabled. Handle this the old way.
	 */

	bitmap = FUNC1(alloc)->la_bitmap;

	numfound = bitoff = startoff = 0;
	left = FUNC2(alloc->id1.bitmap1.i_total);
	while ((bitoff = FUNC3(bitmap, left, startoff)) != -1) {
		if (bitoff == left) {
			/* mlog(0, "bitoff (%d) == left", bitoff); */
			break;
		}
		/* mlog(0, "Found a zero: bitoff = %d, startoff = %d, "
		   "numfound = %d\n", bitoff, startoff, numfound);*/

		/* Ok, we found a zero bit... is it contig. or do we
		 * start over?*/
		if (bitoff == startoff) {
			/* we found a zero */
			numfound++;
			startoff++;
		} else {
			/* got a zero after some ones */
			numfound = 1;
			startoff = bitoff+1;
		}
		/* we got everything we needed */
		if (numfound == *numbits) {
			/* mlog(0, "Found it all!\n"); */
			break;
		}
	}

	FUNC9(bitoff, numfound);

	if (numfound == *numbits)
		bitoff = startoff - numfound;
	else
		bitoff = -1;

bail:
	if (local_resv)
		FUNC5(resmap, resv);

	FUNC8(*numbits,
		FUNC2(alloc->id1.bitmap1.i_total),
		bitoff, numfound);

	return bitoff;
}