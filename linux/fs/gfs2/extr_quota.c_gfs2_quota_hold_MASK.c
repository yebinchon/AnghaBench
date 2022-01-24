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
struct TYPE_4__ {scalar_t__ ar_quota; } ;
struct gfs2_sbd {TYPE_1__ sd_args; } ;
struct gfs2_quota_data {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct gfs2_inode {TYPE_2__* i_qadata; TYPE_3__ i_inode; int /*<<< orphan*/  i_flags; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;
struct TYPE_5__ {int /*<<< orphan*/  qa_qd_num; struct gfs2_quota_data** qa_qd; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ GFS2_QUOTA_OFF ; 
 struct gfs2_sbd* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  GIF_QD_LOCKED ; 
 int /*<<< orphan*/  NO_GID_QUOTA_CHANGE ; 
 int /*<<< orphan*/  NO_UID_QUOTA_CHANGE ; 
 scalar_t__ FUNC1 (struct gfs2_sbd*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_inode*) ; 
 int FUNC3 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct gfs2_sbd*,int /*<<< orphan*/ ,struct gfs2_quota_data**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(struct gfs2_inode *ip, kuid_t uid, kgid_t gid)
{
	struct gfs2_sbd *sdp = FUNC0(&ip->i_inode);
	struct gfs2_quota_data **qd;
	int error;

	if (sdp->sd_args.ar_quota == GFS2_QUOTA_OFF)
		return 0;

	if (ip->i_qadata == NULL) {
		error = FUNC3(ip);
		if (error)
			return error;
	}

	qd = ip->i_qadata->qa_qd;

	if (FUNC1(sdp, !ip->i_qadata->qa_qd_num) ||
	    FUNC1(sdp, !FUNC8(GIF_QD_LOCKED, &ip->i_flags)))
		return -EIO;

	error = FUNC7(sdp, FUNC6(ip->i_inode.i_uid), qd);
	if (error)
		goto out;
	ip->i_qadata->qa_qd_num++;
	qd++;

	error = FUNC7(sdp, FUNC5(ip->i_inode.i_gid), qd);
	if (error)
		goto out;
	ip->i_qadata->qa_qd_num++;
	qd++;

	if (!FUNC9(uid, NO_UID_QUOTA_CHANGE) &&
	    !FUNC9(uid, ip->i_inode.i_uid)) {
		error = FUNC7(sdp, FUNC6(uid), qd);
		if (error)
			goto out;
		ip->i_qadata->qa_qd_num++;
		qd++;
	}

	if (!FUNC4(gid, NO_GID_QUOTA_CHANGE) &&
	    !FUNC4(gid, ip->i_inode.i_gid)) {
		error = FUNC7(sdp, FUNC5(gid), qd);
		if (error)
			goto out;
		ip->i_qadata->qa_qd_num++;
		qd++;
	}

out:
	if (error)
		FUNC2(ip);
	return error;
}