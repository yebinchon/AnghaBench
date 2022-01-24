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
struct super_block {int dummy; } ;
struct qc_dqblk {int dummy; } ;
struct kqid {int dummy; } ;
struct dquot {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dquot*) ; 
 int FUNC1 (struct dquot*) ; 
 int FUNC2 (struct dquot*,struct qc_dqblk*) ; 
 struct dquot* FUNC3 (struct super_block*,struct kqid) ; 
 int /*<<< orphan*/  FUNC4 (struct dquot*) ; 

int FUNC5(struct super_block *sb, struct kqid qid,
		  struct qc_dqblk *di)
{
	struct dquot *dquot;
	int rc;

	dquot = FUNC3(sb, qid);
	if (FUNC0(dquot)) {
		rc = FUNC1(dquot);
		goto out;
	}
	rc = FUNC2(dquot, di);
	FUNC4(dquot);
out:
	return rc;
}