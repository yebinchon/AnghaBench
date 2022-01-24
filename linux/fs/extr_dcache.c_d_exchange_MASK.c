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
struct dentry {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct dentry*,int) ; 
 int /*<<< orphan*/  rename_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct dentry *dentry1, struct dentry *dentry2)
{
	FUNC3(&rename_lock);

	FUNC1(!dentry1->d_inode);
	FUNC1(!dentry2->d_inode);
	FUNC1(FUNC0(dentry1));
	FUNC1(FUNC0(dentry2));

	FUNC2(dentry1, dentry2, true);

	FUNC4(&rename_lock);
}