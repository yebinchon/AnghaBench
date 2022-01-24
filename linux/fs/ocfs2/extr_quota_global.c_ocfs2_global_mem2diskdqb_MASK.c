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
struct ocfs2_global_disk_dqblk {scalar_t__ dqb_pad2; scalar_t__ dqb_pad1; void* dqb_itime; void* dqb_btime; void* dqb_curspace; void* dqb_bsoftlimit; void* dqb_bhardlimit; void* dqb_curinodes; void* dqb_isoftlimit; void* dqb_ihardlimit; void* dqb_use_count; void* dqb_id; } ;
struct mem_dqblk {int /*<<< orphan*/  dqb_itime; int /*<<< orphan*/  dqb_btime; int /*<<< orphan*/  dqb_curspace; int /*<<< orphan*/  dqb_bsoftlimit; int /*<<< orphan*/  dqb_bhardlimit; int /*<<< orphan*/  dqb_curinodes; int /*<<< orphan*/  dqb_isoftlimit; int /*<<< orphan*/  dqb_ihardlimit; } ;
struct dquot {int /*<<< orphan*/  dq_id; struct mem_dqblk dq_dqb; } ;
struct TYPE_2__ {int /*<<< orphan*/  dq_use_count; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct dquot*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 

__attribute__((used)) static void FUNC4(void *dp, struct dquot *dquot)
{
	struct ocfs2_global_disk_dqblk *d = dp;
	struct mem_dqblk *m = &dquot->dq_dqb;

	d->dqb_id = FUNC1(FUNC3(&init_user_ns, dquot->dq_id));
	d->dqb_use_count = FUNC1(FUNC0(dquot)->dq_use_count);
	d->dqb_ihardlimit = FUNC2(m->dqb_ihardlimit);
	d->dqb_isoftlimit = FUNC2(m->dqb_isoftlimit);
	d->dqb_curinodes = FUNC2(m->dqb_curinodes);
	d->dqb_bhardlimit = FUNC2(m->dqb_bhardlimit);
	d->dqb_bsoftlimit = FUNC2(m->dqb_bsoftlimit);
	d->dqb_curspace = FUNC2(m->dqb_curspace);
	d->dqb_btime = FUNC2(m->dqb_btime);
	d->dqb_itime = FUNC2(m->dqb_itime);
	d->dqb_pad1 = d->dqb_pad2 = 0;
}