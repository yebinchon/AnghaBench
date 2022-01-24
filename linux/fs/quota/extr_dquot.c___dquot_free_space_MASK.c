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
struct inode {int /*<<< orphan*/  i_lock; } ;
struct dquot_warn {int w_type; } ;
struct dquot {int /*<<< orphan*/  dq_dqb_lock; } ;
typedef  int /*<<< orphan*/  qsize_t ;

/* Variables and functions */
 int DQUOT_SPACE_RESERVE ; 
 int MAXQUOTAS ; 
 int QUOTA_NL_NOWARN ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct dquot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dquot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dquot_srcu ; 
 int /*<<< orphan*/  FUNC4 (struct dquot_warn*) ; 
 struct dquot** FUNC5 (struct inode*) ; 
 int FUNC6 (struct dquot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dquot**) ; 
 int /*<<< orphan*/  FUNC10 (struct dquot_warn*,struct dquot*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 

void FUNC15(struct inode *inode, qsize_t number, int flags)
{
	unsigned int cnt;
	struct dquot_warn warn[MAXQUOTAS];
	struct dquot **dquots;
	int reserve = flags & DQUOT_SPACE_RESERVE, index;

	if (!FUNC1(inode)) {
		if (reserve) {
			FUNC11(&inode->i_lock);
			*FUNC7(inode) -= number;
			FUNC12(&inode->i_lock);
		} else {
			FUNC8(inode, number);
		}
		return;
	}

	dquots = FUNC5(inode);
	index = FUNC13(&dquot_srcu);
	FUNC11(&inode->i_lock);
	for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
		int wtype;

		warn[cnt].w_type = QUOTA_NL_NOWARN;
		if (!dquots[cnt])
			continue;
		FUNC11(&dquots[cnt]->dq_dqb_lock);
		wtype = FUNC6(dquots[cnt], number);
		if (wtype != QUOTA_NL_NOWARN)
			FUNC10(&warn[cnt], dquots[cnt], wtype);
		if (reserve)
			FUNC3(dquots[cnt], number);
		else
			FUNC2(dquots[cnt], number);
		FUNC12(&dquots[cnt]->dq_dqb_lock);
	}
	if (reserve)
		*FUNC7(inode) -= number;
	else
		FUNC0(inode, number);
	FUNC12(&inode->i_lock);

	if (reserve)
		goto out_unlock;
	FUNC9(dquots);
out_unlock:
	FUNC14(&dquot_srcu, index);
	FUNC4(warn);
}