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
struct vfsmount {int dummy; } ;
struct file_system_type {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vfsmount*) ; 
 struct file_system_type* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC3 (struct file_system_type*) ; 
 struct vfsmount* FUNC4 (struct dentry*,struct file_system_type*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct vfsmount *FUNC5(struct dentry *mntpt, void *ingore)
{
	struct vfsmount *mnt;
	struct file_system_type *type;

	/*
	 * To maintain backward compatibility for tools that mount
	 * debugfs to get to the tracing facility, tracefs is automatically
	 * mounted to the debugfs/tracing directory.
	 */
	type = FUNC1("tracefs");
	if (!type)
		return NULL;
	mnt = FUNC4(mntpt, type, "tracefs", NULL);
	FUNC3(type);
	if (FUNC0(mnt))
		return NULL;
	FUNC2(mnt);

	return mnt;
}