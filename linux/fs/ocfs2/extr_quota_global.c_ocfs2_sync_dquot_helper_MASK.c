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
struct super_block {int /*<<< orphan*/  s_id; } ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_mem_dqinfo {int dummy; } ;
struct TYPE_6__ {unsigned long type; } ;
struct dquot {TYPE_3__ dq_id; struct super_block* dq_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_5__ {struct ocfs2_mem_dqinfo* dqi_priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  dqio_sem; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCFS2_QSYNC_CREDITS ; 
 struct ocfs2_super* FUNC1 (struct super_block*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct dquot*) ; 
 int FUNC8 (struct ocfs2_mem_dqinfo*,int) ; 
 int /*<<< orphan*/ * FUNC9 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC11 (struct ocfs2_mem_dqinfo*,int) ; 
 TYPE_2__* FUNC12 (struct super_block*,unsigned long) ; 
 TYPE_1__* FUNC13 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct dquot *dquot, unsigned long type)
{
	handle_t *handle;
	struct super_block *sb = dquot->dq_sb;
	struct ocfs2_mem_dqinfo *oinfo = FUNC12(sb, type)->dqi_priv;
	struct ocfs2_super *osb = FUNC1(sb);
	int status = 0;

	FUNC14(FUNC4(&init_user_ns, dquot->dq_id),
				      dquot->dq_id.type,
				      type, sb->s_id);
	if (type != dquot->dq_id.type)
		goto out;
	status = FUNC8(oinfo, 1);
	if (status < 0)
		goto out;

	handle = FUNC9(osb, OCFS2_QSYNC_CREDITS);
	if (FUNC0(handle)) {
		status = FUNC2(handle);
		FUNC5(status);
		goto out_ilock;
	}
	FUNC3(&FUNC13(sb)->dqio_sem);
	status = FUNC10(dquot);
	if (status < 0)
		FUNC5(status);
	/* We have to write local structure as well... */
	status = FUNC7(dquot);
	if (status < 0)
		FUNC5(status);
	FUNC15(&FUNC13(sb)->dqio_sem);
	FUNC6(osb, handle);
out_ilock:
	FUNC11(oinfo, 1);
out:
	return status;
}