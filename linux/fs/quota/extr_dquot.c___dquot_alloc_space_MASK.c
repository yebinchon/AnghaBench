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
typedef  scalar_t__ qsize_t ;

/* Variables and functions */
 int DQUOT_SPACE_RESERVE ; 
 int MAXQUOTAS ; 
 int /*<<< orphan*/  QUOTA_NL_NOWARN ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (struct dquot*,scalar_t__,scalar_t__,int,struct dquot_warn*) ; 
 int /*<<< orphan*/  FUNC3 (struct dquot*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct dquot*,scalar_t__) ; 
 int /*<<< orphan*/  dquot_srcu ; 
 int /*<<< orphan*/  FUNC5 (struct dquot_warn*) ; 
 struct dquot** FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct dquot**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 

int FUNC14(struct inode *inode, qsize_t number, int flags)
{
	int cnt, ret = 0, index;
	struct dquot_warn warn[MAXQUOTAS];
	int reserve = flags & DQUOT_SPACE_RESERVE;
	struct dquot **dquots;

	if (!FUNC1(inode)) {
		if (reserve) {
			FUNC10(&inode->i_lock);
			*FUNC8(inode) += number;
			FUNC11(&inode->i_lock);
		} else {
			FUNC7(inode, number);
		}
		goto out;
	}

	for (cnt = 0; cnt < MAXQUOTAS; cnt++)
		warn[cnt].w_type = QUOTA_NL_NOWARN;

	dquots = FUNC6(inode);
	index = FUNC12(&dquot_srcu);
	FUNC10(&inode->i_lock);
	for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
		if (!dquots[cnt])
			continue;
		if (reserve) {
			ret = FUNC2(dquots[cnt], 0, number, flags,
					      &warn[cnt]);
		} else {
			ret = FUNC2(dquots[cnt], number, 0, flags,
					      &warn[cnt]);
		}
		if (ret) {
			/* Back out changes we already did */
			for (cnt--; cnt >= 0; cnt--) {
				if (!dquots[cnt])
					continue;
				FUNC10(&dquots[cnt]->dq_dqb_lock);
				if (reserve)
					FUNC4(dquots[cnt],
								  number);
				else
					FUNC3(dquots[cnt], number);
				FUNC11(&dquots[cnt]->dq_dqb_lock);
			}
			FUNC11(&inode->i_lock);
			goto out_flush_warn;
		}
	}
	if (reserve)
		*FUNC8(inode) += number;
	else
		FUNC0(inode, number);
	FUNC11(&inode->i_lock);

	if (reserve)
		goto out_flush_warn;
	FUNC9(dquots);
out_flush_warn:
	FUNC13(&dquot_srcu, index);
	FUNC5(warn);
out:
	return ret;
}