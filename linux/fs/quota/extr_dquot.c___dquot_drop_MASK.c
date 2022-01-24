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
struct inode {int dummy; } ;
struct dquot {int dummy; } ;

/* Variables and functions */
 int MAXQUOTAS ; 
 int /*<<< orphan*/  dq_data_lock ; 
 int /*<<< orphan*/  FUNC0 (struct dquot**) ; 
 struct dquot** FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct inode *inode)
{
	int cnt;
	struct dquot **dquots = FUNC1(inode);
	struct dquot *put[MAXQUOTAS];

	FUNC2(&dq_data_lock);
	for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
		put[cnt] = dquots[cnt];
		dquots[cnt] = NULL;
	}
	FUNC3(&dq_data_lock);
	FUNC0(put);
}