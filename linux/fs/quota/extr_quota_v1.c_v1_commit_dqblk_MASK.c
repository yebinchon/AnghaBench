#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct v1_disk_dqblk {int /*<<< orphan*/  dqb_itime; int /*<<< orphan*/  dqb_btime; } ;
struct TYPE_12__ {short type; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct dquot {TYPE_3__* dq_sb; TYPE_7__ dq_id; int /*<<< orphan*/  dq_dqb; } ;
typedef  int ssize_t ;
struct TYPE_11__ {scalar_t__* files; TYPE_1__* info; } ;
struct TYPE_10__ {TYPE_2__* s_op; } ;
struct TYPE_9__ {int (* quota_write ) (TYPE_3__*,short,char*,int,int /*<<< orphan*/ ) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  dqi_igrace; int /*<<< orphan*/  dqi_bgrace; } ;

/* Variables and functions */
 int /*<<< orphan*/  DQST_WRITES ; 
 int EIO ; 
 int /*<<< orphan*/  GLOBAL_ROOT_GID ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 short GRPQUOTA ; 
 short USRQUOTA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_7__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 TYPE_4__* FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_3__*,short,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct v1_disk_dqblk*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct dquot *dquot)
{
	short type = dquot->dq_id.type;
	ssize_t ret;
	struct v1_disk_dqblk dqblk;

	FUNC8(&dqblk, &dquot->dq_dqb);
	if (((type == USRQUOTA) && FUNC6(dquot->dq_id.uid, GLOBAL_ROOT_UID)) ||
	    ((type == GRPQUOTA) && FUNC2(dquot->dq_id.gid, GLOBAL_ROOT_GID))) {
		dqblk.dqb_btime =
			FUNC4(dquot->dq_sb)->info[type].dqi_bgrace;
		dqblk.dqb_itime =
			FUNC4(dquot->dq_sb)->info[type].dqi_igrace;
	}
	ret = 0;
	if (FUNC4(dquot->dq_sb)->files[type])
		ret = dquot->dq_sb->s_op->quota_write(dquot->dq_sb, type,
			(char *)&dqblk, sizeof(struct v1_disk_dqblk),
			FUNC7(FUNC1(&init_user_ns, dquot->dq_id)));
	if (ret != sizeof(struct v1_disk_dqblk)) {
		FUNC3(dquot->dq_sb, "dquota write failed");
		if (ret >= 0)
			ret = -EIO;
		goto out;
	}
	ret = 0;

out:
	FUNC0(DQST_WRITES);

	return ret;
}