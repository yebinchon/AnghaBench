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
struct vfsmount {int dummy; } ;
struct open_flags {int dummy; } ;
struct file {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct file* FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct open_flags*) ; 
 struct file* FUNC2 (struct dentry*,struct vfsmount*,char const*,struct open_flags*) ; 

struct file *FUNC3(struct dentry *dentry, struct vfsmount *mnt,
			    const char *filename, int flags, umode_t mode)
{
	struct open_flags op;
	int err = FUNC1(flags, mode, &op);
	if (err)
		return FUNC0(err);
	return FUNC2(dentry, mnt, filename, &op);
}