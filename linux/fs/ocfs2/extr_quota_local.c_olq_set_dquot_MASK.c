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
struct super_block {int dummy; } ;
struct ocfs2_local_disk_dqblk {void* dqb_inodemod; void* dqb_spacemod; void* dqb_id; } ;
struct TYPE_3__ {scalar_t__ dqb_curinodes; scalar_t__ dqb_curspace; } ;
struct TYPE_4__ {int /*<<< orphan*/  dq_id; int /*<<< orphan*/  dq_dqb_lock; TYPE_1__ dq_dqb; struct super_block* dq_sb; } ;
struct ocfs2_dquot {TYPE_2__ dq_dquot; scalar_t__ dq_originodes; scalar_t__ dq_origspace; int /*<<< orphan*/  dq_local_off; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 void* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 scalar_t__ FUNC2 (void*) ; 
 scalar_t__ FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long long,unsigned long long,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct buffer_head *bh, void *private)
{
	struct ocfs2_dquot *od = private;
	struct ocfs2_local_disk_dqblk *dqblk;
	struct super_block *sb = od->dq_dquot.dq_sb;

	dqblk = (struct ocfs2_local_disk_dqblk *)(bh->b_data
		+ FUNC3(sb, od->dq_local_off));

	dqblk->dqb_id = FUNC0(FUNC1(&init_user_ns,
					      od->dq_dquot.dq_id));
	FUNC4(&od->dq_dquot.dq_dqb_lock);
	dqblk->dqb_spacemod = FUNC0(od->dq_dquot.dq_dqb.dqb_curspace -
					  od->dq_origspace);
	dqblk->dqb_inodemod = FUNC0(od->dq_dquot.dq_dqb.dqb_curinodes -
					  od->dq_originodes);
	FUNC5(&od->dq_dquot.dq_dqb_lock);
	FUNC6(
		(unsigned long long)FUNC2(dqblk->dqb_spacemod),
		(unsigned long long)FUNC2(dqblk->dqb_inodemod),
		FUNC1(&init_user_ns, od->dq_dquot.dq_id));
}