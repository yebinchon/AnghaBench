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
struct task_struct {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PIDTYPE_PID ; 
 int /*<<< orphan*/  current ; 
 int FUNC0 (struct inode*,int) ; 
 struct task_struct* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (struct task_struct*,int /*<<< orphan*/ ) ; 

int FUNC6(struct inode *inode, int mask)
{
	struct task_struct *p;
	int rv;

	rv = FUNC0(inode, mask);
	if (rv == 0)
		return rv;

	FUNC3();
	p = FUNC1(FUNC2(inode), PIDTYPE_PID);
	if (p && FUNC5(p, current))
		rv = 0;
	FUNC4();

	return rv;
}