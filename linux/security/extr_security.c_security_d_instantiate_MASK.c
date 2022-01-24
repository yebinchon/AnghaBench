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
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  d_instantiate ; 
 scalar_t__ FUNC2 (int) ; 

void FUNC3(struct dentry *dentry, struct inode *inode)
{
	if (FUNC2(inode && FUNC0(inode)))
		return;
	FUNC1(d_instantiate, dentry, inode);
}