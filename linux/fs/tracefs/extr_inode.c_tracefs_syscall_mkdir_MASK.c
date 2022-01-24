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
typedef  int /*<<< orphan*/  umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int (* mkdir ) (char*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 char* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 TYPE_1__ tracefs_ops ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct dentry *dentry, umode_t mode)
{
	char *name;
	int ret;

	name = FUNC0(dentry);
	if (!name)
		return -ENOMEM;

	/*
	 * The mkdir call can call the generic functions that create
	 * the files within the tracefs system. It is up to the individual
	 * mkdir routine to handle races.
	 */
	FUNC2(inode);
	ret = tracefs_ops.mkdir(name);
	FUNC1(inode);

	FUNC3(name);

	return ret;
}