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
struct gfs2_sbd {TYPE_1__* sd_jdesc; } ;
struct gfs2_rgrpd {int /*<<< orphan*/  rd_gl; } ;
struct gfs2_inode {int /*<<< orphan*/  i_no_addr; int /*<<< orphan*/  i_inode; } ;
struct gfs2_holder {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  jd_blocks; } ;

/* Variables and functions */
 int EIO ; 
 struct gfs2_sbd* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int /*<<< orphan*/  NO_GID_QUOTA_CHANGE ; 
 int /*<<< orphan*/  NO_UID_QUOTA_CHANGE ; 
 scalar_t__ RES_QUOTA ; 
 scalar_t__ RES_RG_BIT ; 
 scalar_t__ RES_STATFS ; 
 struct gfs2_rgrpd* FUNC1 (struct gfs2_sbd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_rgrpd*,struct gfs2_inode*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_holder*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int FUNC8 (struct gfs2_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gfs2_inode*) ; 
 int FUNC10 (struct gfs2_sbd*) ; 
 int FUNC11 (struct gfs2_sbd*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct gfs2_sbd*) ; 

__attribute__((used)) static int FUNC13(struct gfs2_inode *ip)
{
	struct gfs2_sbd *sdp = FUNC0(&ip->i_inode);
	struct gfs2_rgrpd *rgd;
	struct gfs2_holder gh;
	int error;

	if (FUNC5(&ip->i_inode) != 1) {
		FUNC2(ip);
		return -EIO;
	}

	error = FUNC10(sdp);
	if (error)
		return error;

	error = FUNC8(ip, NO_UID_QUOTA_CHANGE, NO_GID_QUOTA_CHANGE);
	if (error)
		return error;

	rgd = FUNC1(sdp, ip->i_no_addr, 1);
	if (!rgd) {
		FUNC2(ip);
		error = -EIO;
		goto out_qs;
	}

	error = FUNC7(rgd->rd_gl, LM_ST_EXCLUSIVE, 0, &gh);
	if (error)
		goto out_qs;

	error = FUNC11(sdp, RES_RG_BIT + RES_STATFS + RES_QUOTA,
				 sdp->sd_jdesc->jd_blocks);
	if (error)
		goto out_rg_gunlock;

	FUNC4(rgd, ip);

	FUNC3(ip);

	FUNC12(sdp);

out_rg_gunlock:
	FUNC6(&gh);
out_qs:
	FUNC9(ip);
	return error;
}