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
typedef  int /*<<< orphan*/  u64 ;
struct inode {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_rgrpd {TYPE_2__* rd_rgl; TYPE_1__* rd_bits; int /*<<< orphan*/  rd_gl; } ;
struct gfs2_inode {int /*<<< orphan*/  i_no_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  b_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  rl_unlinked; } ;
struct TYPE_4__ {TYPE_3__* bi_bh; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFS2_BLKST_UNLINKED ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct gfs2_rgrpd* FUNC3 (struct gfs2_sbd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_rgrpd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_sbd*,struct gfs2_rgrpd*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_inode*,struct gfs2_rgrpd*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC8(struct inode *inode)
{
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_sbd *sdp = FUNC1(inode);
	struct gfs2_rgrpd *rgd;
	u64 blkno = ip->i_no_addr;

	rgd = FUNC3(sdp, blkno, true);
	if (!rgd)
		return;
	FUNC6(sdp, rgd, blkno, 1, GFS2_BLKST_UNLINKED);
	FUNC7(ip, rgd, blkno, 1, GFS2_BLKST_UNLINKED);
	FUNC5(rgd->rd_gl, rgd->rd_bits[0].bi_bh);
	FUNC4(rgd, rgd->rd_bits[0].bi_bh->b_data);
	FUNC2(&rgd->rd_rgl->rl_unlinked, 1);
}