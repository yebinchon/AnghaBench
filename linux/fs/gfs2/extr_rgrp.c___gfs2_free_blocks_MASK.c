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
typedef  int /*<<< orphan*/  u32 ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_rgrpd {TYPE_1__* rd_bits; int /*<<< orphan*/  rd_gl; int /*<<< orphan*/  rd_flags; int /*<<< orphan*/  rd_free; } ;
struct gfs2_inode {scalar_t__ i_depth; int /*<<< orphan*/  i_inode; } ;
struct TYPE_4__ {int /*<<< orphan*/  b_data; } ;
struct TYPE_3__ {TYPE_2__* bi_bh; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFS2_BLKST_FREE ; 
 int /*<<< orphan*/  GFS2_RGF_TRIMMED ; 
 struct gfs2_sbd* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_rgrpd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_sbd*,struct gfs2_rgrpd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_inode*,struct gfs2_rgrpd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct gfs2_inode *ip, struct gfs2_rgrpd *rgd,
			u64 bstart, u32 blen, int meta)
{
	struct gfs2_sbd *sdp = FUNC0(&ip->i_inode);

	FUNC4(sdp, rgd, bstart, blen, GFS2_BLKST_FREE);
	FUNC5(ip, rgd, bstart, blen, GFS2_BLKST_FREE);
	rgd->rd_free += blen;
	rgd->rd_flags &= ~GFS2_RGF_TRIMMED;
	FUNC3(rgd->rd_gl, rgd->rd_bits[0].bi_bh);
	FUNC2(rgd, rgd->rd_bits[0].bi_bh->b_data);

	/* Directories keep their data in the metadata address space */
	if (meta || ip->i_depth)
		FUNC1(ip, bstart, blen);
}