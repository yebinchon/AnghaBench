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
struct gfs2_sbd {int /*<<< orphan*/  sd_quota_inode; } ;
struct gfs2_quota_lvb {int /*<<< orphan*/  qb_value; int /*<<< orphan*/  qb_warn; int /*<<< orphan*/  qb_limit; scalar_t__ __pad; int /*<<< orphan*/  qb_magic; } ;
struct gfs2_quota_data {struct gfs2_quota_lvb qd_qb; TYPE_2__* qd_gl; } ;
struct gfs2_quota {int /*<<< orphan*/  qu_value; int /*<<< orphan*/  qu_warn; int /*<<< orphan*/  qu_limit; } ;
struct gfs2_inode {int dummy; } ;
typedef  int /*<<< orphan*/  q ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_3__ {scalar_t__ sb_lvbptr; } ;
struct TYPE_4__ {TYPE_1__ gl_lksb; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFS2_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gfs2_inode*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_quota*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_quota_data*) ; 

__attribute__((used)) static int FUNC5(struct gfs2_sbd *sdp, struct gfs2_quota_data *qd)
{
	struct gfs2_inode *ip = FUNC0(sdp->sd_quota_inode);
	struct gfs2_quota q;
	struct gfs2_quota_lvb *qlvb;
	loff_t pos;
	int error;

	FUNC3(&q, 0, sizeof(struct gfs2_quota));
	pos = FUNC4(qd);
	error = FUNC2(ip, (char *)&q, &pos, sizeof(q));
	if (error < 0)
		return error;

	qlvb = (struct gfs2_quota_lvb *)qd->qd_gl->gl_lksb.sb_lvbptr;
	qlvb->qb_magic = FUNC1(GFS2_MAGIC);
	qlvb->__pad = 0;
	qlvb->qb_limit = q.qu_limit;
	qlvb->qb_warn = q.qu_warn;
	qlvb->qb_value = q.qu_value;
	qd->qd_qb = *qlvb;

	return 0;
}