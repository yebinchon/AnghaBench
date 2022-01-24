#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct gfs2_sbd {int dummy; } ;
struct gfs2_rgrpd {TYPE_2__* rd_rgl; TYPE_1__* rd_bits; int /*<<< orphan*/  rd_gl; int /*<<< orphan*/  rd_free; int /*<<< orphan*/  rd_dinodes; struct gfs2_sbd* rd_sbd; } ;
struct TYPE_7__ {int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct gfs2_inode {int /*<<< orphan*/  i_no_addr; TYPE_3__ i_inode; } ;
struct TYPE_8__ {int /*<<< orphan*/  b_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  rl_unlinked; } ;
struct TYPE_5__ {TYPE_4__* bi_bh; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFS2_BLKST_FREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_rgrpd*) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_inode*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_rgrpd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_sbd*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_sbd*,struct gfs2_rgrpd*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct gfs2_inode*,struct gfs2_rgrpd*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC9(struct gfs2_rgrpd *rgd, struct gfs2_inode *ip)
{
	struct gfs2_sbd *sdp = rgd->rd_sbd;

	FUNC7(sdp, rgd, ip->i_no_addr, 1, GFS2_BLKST_FREE);
	if (!rgd->rd_dinodes)
		FUNC1(rgd);
	rgd->rd_dinodes--;
	rgd->rd_free++;

	FUNC6(rgd->rd_gl, rgd->rd_bits[0].bi_bh);
	FUNC4(rgd, rgd->rd_bits[0].bi_bh->b_data);
	FUNC0(&rgd->rd_rgl->rl_unlinked, -1);

	FUNC5(sdp, 0, +1, -1);
	FUNC8(ip, rgd, ip->i_no_addr, 1, GFS2_BLKST_FREE);
	FUNC3(ip, -1, ip->i_inode.i_uid, ip->i_inode.i_gid);
	FUNC2(ip, ip->i_no_addr, 1);
}