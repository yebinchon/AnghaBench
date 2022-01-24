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
typedef  size_t u32 ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_quota_data {int /*<<< orphan*/  qd_flags; int /*<<< orphan*/  qd_change_sync; } ;
struct gfs2_inode {TYPE_1__* i_qadata; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_inode; } ;
struct TYPE_2__ {size_t qa_qd_num; int /*<<< orphan*/ * qa_qd_ghs; struct gfs2_quota_data** qa_qd; } ;

/* Variables and functions */
 struct gfs2_sbd* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GIF_QD_LOCKED ; 
 int /*<<< orphan*/  QDF_LOCKED ; 
 scalar_t__ FUNC1 (struct gfs2_quota_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,struct gfs2_quota_data**) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_inode*) ; 
 int FUNC7 (struct gfs2_quota_data*) ; 
 int FUNC8 (struct gfs2_sbd*,struct gfs2_quota_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qd_lock ; 
 int /*<<< orphan*/  FUNC9 (struct gfs2_quota_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_quota_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct gfs2_quota_data*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC15(struct gfs2_inode *ip)
{
	struct gfs2_sbd *sdp = FUNC0(&ip->i_inode);
	struct gfs2_quota_data *qda[4];
	unsigned int count = 0;
	u32 x;
	int found;

	if (!FUNC14(GIF_QD_LOCKED, &ip->i_flags))
		goto out;

	for (x = 0; x < ip->i_qadata->qa_qd_num; x++) {
		struct gfs2_quota_data *qd;
		int sync;

		qd = ip->i_qadata->qa_qd[x];
		sync = FUNC7(qd);

		FUNC5(&ip->i_qadata->qa_qd_ghs[x]);
		if (!sync)
			continue;

		FUNC12(&qd_lock);
		found = FUNC8(sdp, qd, NULL);
		FUNC13(&qd_lock);

		if (!found)
			continue;

		FUNC4(sdp, qd->qd_change_sync);
		if (FUNC1(qd)) {
			FUNC2(QDF_LOCKED, &qd->qd_flags);
			FUNC11(qd);
			FUNC9(qd);
			continue;
		}

		qda[count++] = qd;
	}

	if (count) {
		FUNC3(count, qda);
		for (x = 0; x < count; x++)
			FUNC10(qda[x]);
	}

out:
	FUNC6(ip);
}