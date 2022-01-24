#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int (* rmdir ) (char*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 char* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*) ; 
 TYPE_1__ tracefs_ops ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct dentry *dentry)
{
	char *name;
	int ret;

	name = FUNC0(dentry);
	if (!name)
		return -ENOMEM;

	/*
	 * The rmdir call can call the generic functions that create
	 * the files within the tracefs system. It is up to the individual
	 * rmdir routine to handle races.
	 * This time we need to unlock not only the parent (inode) but
	 * also the directory that is being deleted.
	 */
	FUNC3(inode);
	FUNC3(dentry->d_inode);

	ret = tracefs_ops.rmdir(name);

	FUNC2(inode, I_MUTEX_PARENT);
	FUNC1(dentry->d_inode);

	FUNC4(name);

	return ret;
}