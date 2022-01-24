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

/* Variables and functions */
 int MAXQUOTAS ; 
 int QUOTA_NL_NOWARN ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct dquot* const,int) ; 
 int /*<<< orphan*/  dquot_srcu ; 
 int /*<<< orphan*/  FUNC2 (struct dquot_warn*) ; 
 struct dquot** FUNC3 (struct inode*) ; 
 int FUNC4 (struct dquot* const,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dquot* const*) ; 
 int /*<<< orphan*/  FUNC6 (struct dquot_warn*,struct dquot* const,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

void FUNC11(struct inode *inode)
{
	unsigned int cnt;
	struct dquot_warn warn[MAXQUOTAS];
	struct dquot * const *dquots;
	int index;

	if (!FUNC0(inode))
		return;

	dquots = FUNC3(inode);
	index = FUNC9(&dquot_srcu);
	FUNC7(&inode->i_lock);
	for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
		int wtype;

		warn[cnt].w_type = QUOTA_NL_NOWARN;
		if (!dquots[cnt])
			continue;
		FUNC7(&dquots[cnt]->dq_dqb_lock);
		wtype = FUNC4(dquots[cnt], 1);
		if (wtype != QUOTA_NL_NOWARN)
			FUNC6(&warn[cnt], dquots[cnt], wtype);
		FUNC1(dquots[cnt], 1);
		FUNC8(&dquots[cnt]->dq_dqb_lock);
	}
	FUNC8(&inode->i_lock);
	FUNC5(dquots);
	FUNC10(&dquot_srcu, index);
	FUNC2(warn);
}