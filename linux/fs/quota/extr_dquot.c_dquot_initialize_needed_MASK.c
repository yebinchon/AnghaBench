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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dquot {int dummy; } ;

/* Variables and functions */
 int MAXQUOTAS ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct dquot** FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 

bool FUNC3(struct inode *inode)
{
	struct dquot **dquots;
	int i;

	if (!FUNC0(inode))
		return false;

	dquots = FUNC1(inode);
	for (i = 0; i < MAXQUOTAS; i++)
		if (!dquots[i] && FUNC2(inode->i_sb, i))
			return true;
	return false;
}