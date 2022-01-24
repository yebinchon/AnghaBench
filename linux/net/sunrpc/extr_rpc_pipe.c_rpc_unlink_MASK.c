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
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int FUNC0 (struct inode*,struct dentry*) ; 
 struct inode* FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 

int
FUNC6(struct dentry *dentry)
{
	struct dentry *parent;
	struct inode *dir;
	int error = 0;

	parent = FUNC2(dentry);
	dir = FUNC1(parent);
	FUNC4(dir, I_MUTEX_PARENT);
	error = FUNC0(dir, dentry);
	FUNC5(dir);
	FUNC3(parent);
	return error;
}