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
typedef  scalar_t__ u64 ;
struct gfs2_rgrpd {scalar_t__ rd_reserved; int /*<<< orphan*/  rd_extfail_pt; int /*<<< orphan*/  rd_rstree; } ;
struct gfs2_rbm {struct gfs2_rgrpd* rgd; } ;
struct gfs2_blkreserv {scalar_t__ rs_free; struct gfs2_rbm rs_rbm; int /*<<< orphan*/  rs_node; } ;
struct gfs2_bitmap {int /*<<< orphan*/  bi_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GBF_FULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRACE_RS_TREEDEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct gfs2_rbm*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct gfs2_rbm*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_blkreserv*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct gfs2_bitmap* FUNC7 (struct gfs2_rbm*) ; 
 int /*<<< orphan*/  FUNC8 (struct gfs2_blkreserv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct gfs2_blkreserv *rs)
{
	struct gfs2_rgrpd *rgd;

	if (!FUNC5(rs))
		return;

	rgd = rs->rs_rbm.rgd;
	FUNC8(rs, TRACE_RS_TREEDEL);
	FUNC6(&rs->rs_node, &rgd->rd_rstree);
	FUNC1(&rs->rs_node);

	if (rs->rs_free) {
		u64 last_block = FUNC4(&rs->rs_rbm) +
				 rs->rs_free - 1;
		struct gfs2_rbm last_rbm = { .rgd = rs->rs_rbm.rgd, };
		struct gfs2_bitmap *start, *last;

		/* return reserved blocks to the rgrp */
		FUNC0(rs->rs_rbm.rgd->rd_reserved < rs->rs_free);
		rs->rs_rbm.rgd->rd_reserved -= rs->rs_free;
		/* The rgrp extent failure point is likely not to increase;
		   it will only do so if the freed blocks are somehow
		   contiguous with a span of free blocks that follows. Still,
		   it will force the number to be recalculated later. */
		rgd->rd_extfail_pt += rs->rs_free;
		rs->rs_free = 0;
		if (FUNC3(&last_rbm, last_block))
			return;
		start = FUNC7(&rs->rs_rbm);
		last = FUNC7(&last_rbm);
		do
			FUNC2(GBF_FULL, &start->bi_flags);
		while (start++ != last);
	}
}