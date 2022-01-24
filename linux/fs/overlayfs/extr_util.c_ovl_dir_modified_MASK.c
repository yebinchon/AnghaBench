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
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,int) ; 

void FUNC4(struct dentry *dentry, bool impurity)
{
	/* Copy mtime/ctime */
	FUNC1(FUNC0(FUNC2(dentry)), FUNC0(dentry));

	FUNC3(dentry, impurity);
}