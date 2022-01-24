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
struct TYPE_3__ {scalar_t__ ar_quota; } ;
struct gfs2_sbd {TYPE_1__ sd_args; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct gfs2_inode {TYPE_2__ i_inode; } ;
struct gfs2_alloc_parms {int /*<<< orphan*/  allowed; } ;

/* Variables and functions */
 scalar_t__ GFS2_QUOTA_OFF ; 
 scalar_t__ GFS2_QUOTA_ON ; 
 struct gfs2_sbd* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  NO_GID_QUOTA_CHANGE ; 
 int /*<<< orphan*/  NO_UID_QUOTA_CHANGE ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int FUNC1 (struct gfs2_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_alloc_parms*) ; 
 int FUNC2 (struct gfs2_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_inode*) ; 

__attribute__((used)) static inline int FUNC4(struct gfs2_inode *ip,
					struct gfs2_alloc_parms *ap)
{
	struct gfs2_sbd *sdp = FUNC0(&ip->i_inode);
	int ret;

	ap->allowed = UINT_MAX; /* Assume we are permitted a whole lot */
	if (sdp->sd_args.ar_quota == GFS2_QUOTA_OFF)
		return 0;
	ret = FUNC2(ip, NO_UID_QUOTA_CHANGE, NO_GID_QUOTA_CHANGE);
	if (ret)
		return ret;
	if (sdp->sd_args.ar_quota != GFS2_QUOTA_ON)
		return 0;
	ret = FUNC1(ip, ip->i_inode.i_uid, ip->i_inode.i_gid, ap);
	if (ret)
		FUNC3(ip);
	return ret;
}