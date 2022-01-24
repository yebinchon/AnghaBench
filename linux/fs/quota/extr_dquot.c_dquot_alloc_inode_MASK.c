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
struct dquot_warn {int /*<<< orphan*/  w_type; } ;
struct dquot {int /*<<< orphan*/  dq_dqb_lock; } ;

/* Variables and functions */
 int MAXQUOTAS ; 
 int /*<<< orphan*/  QUOTA_NL_NOWARN ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (struct dquot* const,int,struct dquot_warn*) ; 
 int /*<<< orphan*/  FUNC2 (struct dquot* const,int) ; 
 int /*<<< orphan*/  dquot_srcu ; 
 int /*<<< orphan*/  FUNC3 (struct dquot_warn*) ; 
 struct dquot** FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct dquot* const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

int FUNC10(struct inode *inode)
{
	int cnt, ret = 0, index;
	struct dquot_warn warn[MAXQUOTAS];
	struct dquot * const *dquots;

	if (!FUNC0(inode))
		return 0;
	for (cnt = 0; cnt < MAXQUOTAS; cnt++)
		warn[cnt].w_type = QUOTA_NL_NOWARN;

	dquots = FUNC4(inode);
	index = FUNC8(&dquot_srcu);
	FUNC6(&inode->i_lock);
	for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
		if (!dquots[cnt])
			continue;
		ret = FUNC1(dquots[cnt], 1, &warn[cnt]);
		if (ret) {
			for (cnt--; cnt >= 0; cnt--) {
				if (!dquots[cnt])
					continue;
				/* Back out changes we already did */
				FUNC6(&dquots[cnt]->dq_dqb_lock);
				FUNC2(dquots[cnt], 1);
				FUNC7(&dquots[cnt]->dq_dqb_lock);
			}
			goto warn_put_all;
		}
	}

warn_put_all:
	FUNC7(&inode->i_lock);
	if (ret == 0)
		FUNC5(dquots);
	FUNC9(&dquot_srcu, index);
	FUNC3(warn);
	return ret;
}