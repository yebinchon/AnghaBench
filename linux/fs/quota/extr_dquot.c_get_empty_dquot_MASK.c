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
struct super_block {TYPE_1__* dq_op; } ;
struct dquot {int /*<<< orphan*/  dq_dqb_lock; int /*<<< orphan*/  dq_count; int /*<<< orphan*/  dq_id; struct super_block* dq_sb; int /*<<< orphan*/  dq_dirty; int /*<<< orphan*/  dq_hash; int /*<<< orphan*/  dq_inuse; int /*<<< orphan*/  dq_free; int /*<<< orphan*/  dq_lock; } ;
struct TYPE_2__ {struct dquot* (* alloc_dquot ) (struct super_block*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct dquot* FUNC6 (struct super_block*,int) ; 

__attribute__((used)) static struct dquot *FUNC7(struct super_block *sb, int type)
{
	struct dquot *dquot;

	dquot = sb->dq_op->alloc_dquot(sb, type);
	if(!dquot)
		return NULL;

	FUNC4(&dquot->dq_lock);
	FUNC1(&dquot->dq_free);
	FUNC1(&dquot->dq_inuse);
	FUNC0(&dquot->dq_hash);
	FUNC1(&dquot->dq_dirty);
	dquot->dq_sb = sb;
	dquot->dq_id = FUNC3(type);
	FUNC2(&dquot->dq_count, 1);
	FUNC5(&dquot->dq_dqb_lock);

	return dquot;
}