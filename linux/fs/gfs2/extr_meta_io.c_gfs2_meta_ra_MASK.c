#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct TYPE_4__ {int sb_bsize_shift; } ;
struct gfs2_sbd {TYPE_2__ sd_sb; } ;
struct TYPE_3__ {struct gfs2_sbd* ln_sbd; } ;
struct gfs2_glock {TYPE_1__ gl_name; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CREATE ; 
 int REQ_META ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int REQ_PRIO ; 
 int REQ_RAHEAD ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 struct buffer_head* FUNC4 (struct gfs2_glock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gt_max_readahead ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 

struct buffer_head *FUNC8(struct gfs2_glock *gl, u64 dblock, u32 extlen)
{
	struct gfs2_sbd *sdp = gl->gl_name.ln_sbd;
	struct buffer_head *first_bh, *bh;
	u32 max_ra = FUNC5(sdp, gt_max_readahead) >>
			  sdp->sd_sb.sb_bsize_shift;

	FUNC0(!extlen);

	if (max_ra < 1)
		max_ra = 1;
	if (extlen > max_ra)
		extlen = max_ra;

	first_bh = FUNC4(gl, dblock, CREATE);

	if (FUNC3(first_bh))
		goto out;
	if (!FUNC2(first_bh))
		FUNC6(REQ_OP_READ, REQ_META | REQ_PRIO, 1, &first_bh);

	dblock++;
	extlen--;

	while (extlen) {
		bh = FUNC4(gl, dblock, CREATE);

		if (!FUNC3(bh) && !FUNC2(bh))
			FUNC6(REQ_OP_READ,
				    REQ_RAHEAD | REQ_META | REQ_PRIO,
				    1, &bh);
		FUNC1(bh);
		dblock++;
		extlen--;
		if (!FUNC2(first_bh) && FUNC3(first_bh))
			goto out;
	}

	FUNC7(first_bh);
out:
	return first_bh;
}