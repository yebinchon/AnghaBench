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
struct quota_info {int /*<<< orphan*/  dqio_sem; TYPE_1__* info; } ;
struct ocfs2_mem_dqinfo {int dummy; } ;
struct TYPE_2__ {struct ocfs2_mem_dqinfo* dqi_priv; } ;

/* Variables and functions */
 int FUNC0 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ocfs2_mem_dqinfo*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_mem_dqinfo*,int) ; 
 struct quota_info* FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct super_block *sb, int type)
{
	int err;
	struct quota_info *dqopt = FUNC4(sb);
	struct ocfs2_mem_dqinfo *info = dqopt->info[type].dqi_priv;

	FUNC1(&dqopt->dqio_sem);
	err = FUNC2(info, 1);
	if (err < 0)
		goto out_sem;
	err = FUNC0(sb, type);
	FUNC3(info, 1);
out_sem:
	FUNC5(&dqopt->dqio_sem);
	return err;
}