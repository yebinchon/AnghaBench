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
typedef  unsigned int u64 ;
struct gfs2_rgrpd {unsigned int rd_reserved; int /*<<< orphan*/  rd_rsspin; } ;
struct gfs2_rbm {struct gfs2_rgrpd* rgd; } ;
struct gfs2_blkreserv {scalar_t__ rs_free; int /*<<< orphan*/  rs_rbm; } ;
struct gfs2_inode {int /*<<< orphan*/  i_sizehint; struct gfs2_blkreserv i_res; } ;

/* Variables and functions */
 int /*<<< orphan*/  RGRP_RSRV_ADDBLKS ; 
 int /*<<< orphan*/  TRACE_RS_CLAIM ; 
 int /*<<< orphan*/  FUNC0 (struct gfs2_blkreserv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct gfs2_rbm const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC4 (struct gfs2_rbm const*) ; 
 scalar_t__ FUNC5 (struct gfs2_blkreserv*) ; 
 unsigned int FUNC6 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct gfs2_blkreserv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct gfs2_inode *ip,
				    const struct gfs2_rbm *rbm, unsigned len)
{
	struct gfs2_blkreserv *rs = &ip->i_res;
	struct gfs2_rgrpd *rgd = rbm->rgd;
	unsigned rlen;
	u64 block;
	int ret;

	FUNC7(&rgd->rd_rsspin);
	if (FUNC5(rs)) {
		if (FUNC2(&rs->rs_rbm, rbm)) {
			block = FUNC4(rbm);
			ret = FUNC3(&rs->rs_rbm, block + len);
			rlen = FUNC6(rs->rs_free, len);
			rs->rs_free -= rlen;
			rgd->rd_reserved -= rlen;
			FUNC9(rs, TRACE_RS_CLAIM);
			if (rs->rs_free && !ret)
				goto out;
			/* We used up our block reservation, so we should
			   reserve more blocks next time. */
			FUNC1(RGRP_RSRV_ADDBLKS, &ip->i_sizehint);
		}
		FUNC0(rs);
	}
out:
	FUNC8(&rgd->rd_rsspin);
}