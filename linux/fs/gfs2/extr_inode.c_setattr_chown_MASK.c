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
struct inode {int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct iattr {int ia_valid; int /*<<< orphan*/  ia_gid; int /*<<< orphan*/  ia_uid; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_inode; } ;
struct gfs2_alloc_parms {scalar_t__ target; } ;
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 int ATTR_GID ; 
 int ATTR_UID ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  NO_GID_QUOTA_CHANGE ; 
 int /*<<< orphan*/  NO_UID_QUOTA_CHANGE ; 
 scalar_t__ RES_DINODE ; 
 int RES_QUOTA ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_inode*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct gfs2_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_alloc_parms*) ; 
 int FUNC5 (struct gfs2_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_inode*) ; 
 int FUNC7 (struct gfs2_sbd*) ; 
 int FUNC8 (struct gfs2_inode*) ; 
 int FUNC9 (struct inode*,struct iattr*) ; 
 int FUNC10 (struct gfs2_sbd*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct gfs2_sbd*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct inode *inode, struct iattr *attr)
{
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_sbd *sdp = FUNC1(inode);
	kuid_t ouid, nuid;
	kgid_t ogid, ngid;
	int error;
	struct gfs2_alloc_parms ap;

	ouid = inode->i_uid;
	ogid = inode->i_gid;
	nuid = attr->ia_uid;
	ngid = attr->ia_gid;

	if (!(attr->ia_valid & ATTR_UID) || FUNC13(ouid, nuid))
		ouid = nuid = NO_UID_QUOTA_CHANGE;
	if (!(attr->ia_valid & ATTR_GID) || FUNC12(ogid, ngid))
		ogid = ngid = NO_GID_QUOTA_CHANGE;

	error = FUNC8(ip);
	if (error)
		goto out;

	error = FUNC7(sdp);
	if (error)
		goto out;

	error = FUNC5(ip, nuid, ngid);
	if (error)
		goto out;

	ap.target = FUNC2(&ip->i_inode);

	if (!FUNC13(ouid, NO_UID_QUOTA_CHANGE) ||
	    !FUNC12(ogid, NO_GID_QUOTA_CHANGE)) {
		error = FUNC4(ip, nuid, ngid, &ap);
		if (error)
			goto out_gunlock_q;
	}

	error = FUNC10(sdp, RES_DINODE + 2 * RES_QUOTA, 0);
	if (error)
		goto out_gunlock_q;

	error = FUNC9(inode, attr);
	if (error)
		goto out_end_trans;

	if (!FUNC13(ouid, NO_UID_QUOTA_CHANGE) ||
	    !FUNC12(ogid, NO_GID_QUOTA_CHANGE)) {
		FUNC3(ip, -(s64)ap.target, ouid, ogid);
		FUNC3(ip, ap.target, nuid, ngid);
	}

out_end_trans:
	FUNC11(sdp);
out_gunlock_q:
	FUNC6(ip);
out:
	return error;
}