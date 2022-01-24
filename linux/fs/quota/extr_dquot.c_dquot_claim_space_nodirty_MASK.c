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
struct inode {int /*<<< orphan*/  i_lock; } ;
struct TYPE_2__ {scalar_t__ dqb_rsvspace; int /*<<< orphan*/  dqb_curspace; } ;
struct dquot {int /*<<< orphan*/  dq_dqb_lock; TYPE_1__ dq_dqb; } ;
typedef  scalar_t__ qsize_t ;

/* Variables and functions */
 int MAXQUOTAS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  dquot_srcu ; 
 struct dquot** FUNC3 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct dquot**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

int FUNC10(struct inode *inode, qsize_t number)
{
	struct dquot **dquots;
	int cnt, index;

	if (!FUNC2(inode)) {
		FUNC6(&inode->i_lock);
		*FUNC4(inode) -= number;
		FUNC1(inode, number);
		FUNC7(&inode->i_lock);
		return 0;
	}

	dquots = FUNC3(inode);
	index = FUNC8(&dquot_srcu);
	FUNC6(&inode->i_lock);
	/* Claim reserved quotas to allocated quotas */
	for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
		if (dquots[cnt]) {
			struct dquot *dquot = dquots[cnt];

			FUNC6(&dquot->dq_dqb_lock);
			if (FUNC0(dquot->dq_dqb.dqb_rsvspace < number))
				number = dquot->dq_dqb.dqb_rsvspace;
			dquot->dq_dqb.dqb_curspace += number;
			dquot->dq_dqb.dqb_rsvspace -= number;
			FUNC7(&dquot->dq_dqb_lock);
		}
	}
	/* Update inode bytes */
	*FUNC4(inode) -= number;
	FUNC1(inode, number);
	FUNC7(&inode->i_lock);
	FUNC5(dquots);
	FUNC9(&dquot_srcu, index);
	return 0;
}