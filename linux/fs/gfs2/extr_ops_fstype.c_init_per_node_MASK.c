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
struct inode {int dummy; } ;
struct TYPE_3__ {scalar_t__ ar_spectator; } ;
struct gfs2_sbd {struct inode* sd_sc_inode; struct inode* sd_qc_inode; int /*<<< orphan*/  sd_sc_gh; int /*<<< orphan*/  sd_qc_gh; TYPE_2__* sd_jdesc; TYPE_1__ sd_args; int /*<<< orphan*/  sd_master_dir; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct TYPE_4__ {int jd_jid; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_sbd*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC7 (struct inode*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 

__attribute__((used)) static int FUNC10(struct gfs2_sbd *sdp, int undo)
{
	struct inode *pn = NULL;
	char buf[30];
	int error = 0;
	struct gfs2_inode *ip;
	struct inode *master = FUNC3(sdp->sd_master_dir);

	if (sdp->sd_args.ar_spectator)
		return 0;

	if (undo)
		goto fail_qc_gh;

	pn = FUNC7(master, "per_node");
	if (FUNC1(pn)) {
		error = FUNC2(pn);
		FUNC4(sdp, "can't find per_node directory: %d\n", error);
		return error;
	}

	FUNC9(buf, "statfs_change%u", sdp->sd_jdesc->jd_jid);
	sdp->sd_sc_inode = FUNC7(pn, buf);
	if (FUNC1(sdp->sd_sc_inode)) {
		error = FUNC2(sdp->sd_sc_inode);
		FUNC4(sdp, "can't find local \"sc\" file: %d\n", error);
		goto fail;
	}

	FUNC9(buf, "quota_change%u", sdp->sd_jdesc->jd_jid);
	sdp->sd_qc_inode = FUNC7(pn, buf);
	if (FUNC1(sdp->sd_qc_inode)) {
		error = FUNC2(sdp->sd_qc_inode);
		FUNC4(sdp, "can't find local \"qc\" file: %d\n", error);
		goto fail_ut_i;
	}

	FUNC8(pn);
	pn = NULL;

	ip = FUNC0(sdp->sd_sc_inode);
	error = FUNC6(ip->i_gl, LM_ST_EXCLUSIVE, 0,
				   &sdp->sd_sc_gh);
	if (error) {
		FUNC4(sdp, "can't lock local \"sc\" file: %d\n", error);
		goto fail_qc_i;
	}

	ip = FUNC0(sdp->sd_qc_inode);
	error = FUNC6(ip->i_gl, LM_ST_EXCLUSIVE, 0,
				   &sdp->sd_qc_gh);
	if (error) {
		FUNC4(sdp, "can't lock local \"qc\" file: %d\n", error);
		goto fail_ut_gh;
	}

	return 0;

fail_qc_gh:
	FUNC5(&sdp->sd_qc_gh);
fail_ut_gh:
	FUNC5(&sdp->sd_sc_gh);
fail_qc_i:
	FUNC8(sdp->sd_qc_inode);
fail_ut_i:
	FUNC8(sdp->sd_sc_inode);
fail:
	FUNC8(pn);
	return error;
}