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
typedef  int /*<<< orphan*/  umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct inode*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inode_mkdir ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct inode *dir, struct dentry *dentry, umode_t mode)
{
	if (FUNC2(FUNC0(dir)))
		return 0;
	return FUNC1(inode_mkdir, 0, dir, dentry, mode);
}