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
typedef  size_t u32 ;
struct TYPE_5__ {scalar_t__ ar_quota; } ;
struct gfs2_sbd {TYPE_4__* sd_vfs; TYPE_1__ sd_args; } ;
struct TYPE_7__ {int /*<<< orphan*/  qb_value; int /*<<< orphan*/  qb_limit; int /*<<< orphan*/  qb_warn; } ;
struct gfs2_quota_data {scalar_t__ qd_change; scalar_t__ qd_last_warn; int /*<<< orphan*/  qd_id; int /*<<< orphan*/  qd_flags; TYPE_3__ qd_qb; } ;
struct gfs2_inode {TYPE_2__* i_qadata; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_inode; } ;
struct gfs2_alloc_parms {scalar_t__ allowed; scalar_t__ min_target; scalar_t__ target; } ;
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;
struct TYPE_8__ {int /*<<< orphan*/  s_dev; } ;
struct TYPE_6__ {size_t qa_qd_num; struct gfs2_quota_data** qa_qd; } ;

/* Variables and functions */
 int EDQUOT ; 
 scalar_t__ GFS2_QUOTA_ON ; 
 struct gfs2_sbd* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GIF_QD_LOCKED ; 
 int HZ ; 
 int /*<<< orphan*/  QDF_QMSG_QUIET ; 
 int /*<<< orphan*/  QUOTA_NL_BHARDWARN ; 
 int /*<<< orphan*/  QUOTA_NL_BSOFTWARN ; 
 scalar_t__ UINT_MAX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gt_quota_warn_period ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct gfs2_quota_data*,char*) ; 
 int /*<<< orphan*/  qd_lock ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 

int FUNC13(struct gfs2_inode *ip, kuid_t uid, kgid_t gid,
		     struct gfs2_alloc_parms *ap)
{
	struct gfs2_sbd *sdp = FUNC0(&ip->i_inode);
	struct gfs2_quota_data *qd;
	s64 value, warn, limit;
	u32 x;
	int error = 0;

	ap->allowed = UINT_MAX; /* Assume we are permitted a whole lot */
	if (!FUNC11(GIF_QD_LOCKED, &ip->i_flags))
		return 0;

        if (sdp->sd_args.ar_quota != GFS2_QUOTA_ON)
                return 0;

	for (x = 0; x < ip->i_qadata->qa_qd_num; x++) {
		qd = ip->i_qadata->qa_qd[x];

		if (!(FUNC6(qd->qd_id, FUNC4(uid)) ||
		      FUNC6(qd->qd_id, FUNC3(gid))))
			continue;

		warn = (s64)FUNC1(qd->qd_qb.qb_warn);
		limit = (s64)FUNC1(qd->qd_qb.qb_limit);
		value = (s64)FUNC1(qd->qd_qb.qb_value);
		FUNC8(&qd_lock);
		value += qd->qd_change;
		FUNC9(&qd_lock);

		if (limit > 0 && (limit - value) < ap->allowed)
			ap->allowed = limit - value;
		/* If we can't meet the target */
		if (limit && limit < (value + (s64)ap->target)) {
			/* If no min_target specified or we don't meet
			 * min_target, return -EDQUOT */
			if (!ap->min_target || ap->min_target > ap->allowed) {
				if (!FUNC10(QDF_QMSG_QUIET,
						      &qd->qd_flags)) {
					FUNC5(qd, "exceeded");
					FUNC7(qd->qd_id,
							   sdp->sd_vfs->s_dev,
							   QUOTA_NL_BHARDWARN);
				}
				error = -EDQUOT;
				break;
			}
		} else if (warn && warn < value &&
			   FUNC12(jiffies, qd->qd_last_warn +
					 FUNC2(sdp, gt_quota_warn_period)
					 * HZ)) {
			FUNC7(qd->qd_id,
					   sdp->sd_vfs->s_dev, QUOTA_NL_BSOFTWARN);
			error = FUNC5(qd, "warning");
			qd->qd_last_warn = jiffies;
		}
	}
	return error;
}