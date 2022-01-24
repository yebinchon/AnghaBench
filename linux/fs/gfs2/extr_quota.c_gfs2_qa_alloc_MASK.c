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
struct TYPE_2__ {scalar_t__ ar_quota; } ;
struct gfs2_sbd {TYPE_1__ sd_args; } ;
struct gfs2_inode {int /*<<< orphan*/  i_rw_mutex; int /*<<< orphan*/ * i_qadata; int /*<<< orphan*/  i_inode; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ GFS2_QUOTA_OFF ; 
 struct gfs2_sbd* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gfs2_qadata_cachep ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct gfs2_inode *ip)
{
	int error = 0;
	struct gfs2_sbd *sdp = FUNC0(&ip->i_inode);

	if (sdp->sd_args.ar_quota == GFS2_QUOTA_OFF)
		return 0;

	FUNC1(&ip->i_rw_mutex);
	if (ip->i_qadata == NULL) {
		ip->i_qadata = FUNC2(gfs2_qadata_cachep, GFP_NOFS);
		if (!ip->i_qadata)
			error = -ENOMEM;
	}
	FUNC3(&ip->i_rw_mutex);
	return error;
}