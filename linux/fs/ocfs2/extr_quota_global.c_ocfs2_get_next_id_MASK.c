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
struct super_block {int dummy; } ;
struct ocfs2_mem_dqinfo {int /*<<< orphan*/  dqi_gi; } ;
struct kqid {int type; } ;
struct TYPE_2__ {struct ocfs2_mem_dqinfo* dqi_priv; } ;

/* Variables and functions */
 int ENOENT ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct kqid) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct ocfs2_mem_dqinfo*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ocfs2_mem_dqinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_mem_dqinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_mem_dqinfo*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct kqid*) ; 
 TYPE_1__* FUNC7 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct super_block *sb, struct kqid *qid)
{
	int type = qid->type;
	struct ocfs2_mem_dqinfo *info = FUNC7(sb, type)->dqi_priv;
	int status = 0;

	FUNC9(FUNC0(&init_user_ns, *qid), type);
	if (!FUNC8(sb, type)) {
		status = -ESRCH;
		goto out;
	}
	status = FUNC2(info, 0);
	if (status < 0)
		goto out;
	status = FUNC3(info, 0);
	if (status < 0)
		goto out_global;
	status = FUNC6(&info->dqi_gi, qid);
	FUNC4(info, 0);
out_global:
	FUNC5(info, 0);
out:
	/*
	 * Avoid logging ENOENT since it just means there isn't next ID and
	 * ESRCH which means quota isn't enabled for the filesystem.
	 */
	if (status && status != -ENOENT && status != -ESRCH)
		FUNC1(status);
	return status;
}