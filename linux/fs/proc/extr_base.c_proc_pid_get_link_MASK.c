#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct path {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;
struct TYPE_3__ {int (* proc_get_link ) (struct dentry*,struct path*) ;} ;
struct TYPE_4__ {TYPE_1__ op; } ;

/* Variables and functions */
 int EACCES ; 
 int ECHILD ; 
 char const* FUNC0 (int) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct path*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (struct dentry*,struct path*) ; 

__attribute__((used)) static const char *FUNC5(struct dentry *dentry,
				     struct inode *inode,
				     struct delayed_call *done)
{
	struct path path;
	int error = -EACCES;

	if (!dentry)
		return FUNC0(-ECHILD);

	/* Are we allowed to snoop on the tasks file descriptors? */
	if (!FUNC3(inode))
		goto out;

	error = FUNC1(inode)->op.proc_get_link(dentry, &path);
	if (error)
		goto out;

	FUNC2(&path);
	return NULL;
out:
	return FUNC0(error);
}