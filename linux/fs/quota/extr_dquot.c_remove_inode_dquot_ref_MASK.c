#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct list_head {int dummy; } ;
struct inode {int dummy; } ;
struct dquot {int /*<<< orphan*/  dq_free; } ;

/* Variables and functions */
 int /*<<< orphan*/  dq_list_lock ; 
 int /*<<< orphan*/  FUNC0 (struct dquot*) ; 
 struct dquot** FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct inode *inode, int type,
				   struct list_head *tofree_head)
{
	struct dquot **dquots = FUNC1(inode);
	struct dquot *dquot = dquots[type];

	if (!dquot)
		return;

	dquots[type] = NULL;
	if (FUNC3(&dquot->dq_free)) {
		/*
		 * The inode still has reference to dquot so it can't be in the
		 * free list
		 */
		FUNC4(&dq_list_lock);
		FUNC2(&dquot->dq_free, tofree_head);
		FUNC5(&dq_list_lock);
	} else {
		/*
		 * Dquot is already in a list to put so we won't drop the last
		 * reference here.
		 */
		FUNC0(dquot);
	}
}