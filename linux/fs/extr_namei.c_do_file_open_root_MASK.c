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
struct vfsmount {int dummy; } ;
struct open_flags {int lookup_flags; int intent; } ;
struct TYPE_2__ {struct dentry* dentry; struct vfsmount* mnt; } ;
struct nameidata {TYPE_1__ root; } ;
struct filename {int dummy; } ;
struct file {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECHILD ; 
 int /*<<< orphan*/  ELOOP ; 
 struct file* FUNC0 (struct filename*) ; 
 struct file* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESTALE ; 
 scalar_t__ FUNC2 (struct filename*) ; 
 int LOOKUP_OPEN ; 
 int LOOKUP_RCU ; 
 int LOOKUP_REVAL ; 
 int LOOKUP_ROOT ; 
 scalar_t__ FUNC3 (struct dentry*) ; 
 struct filename* FUNC4 (char const*) ; 
 struct file* FUNC5 (struct nameidata*,struct open_flags const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct filename*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct nameidata*,int,struct filename*) ; 
 scalar_t__ FUNC9 (int) ; 

struct file *FUNC10(struct dentry *dentry, struct vfsmount *mnt,
		const char *name, const struct open_flags *op)
{
	struct nameidata nd;
	struct file *file;
	struct filename *filename;
	int flags = op->lookup_flags | LOOKUP_ROOT;

	nd.root.mnt = mnt;
	nd.root.dentry = dentry;

	if (FUNC3(dentry) && op->intent & LOOKUP_OPEN)
		return FUNC1(-ELOOP);

	filename = FUNC4(name);
	if (FUNC2(filename))
		return FUNC0(filename);

	FUNC8(&nd, -1, filename);
	file = FUNC5(&nd, op, flags | LOOKUP_RCU);
	if (FUNC9(file == FUNC1(-ECHILD)))
		file = FUNC5(&nd, op, flags);
	if (FUNC9(file == FUNC1(-ESTALE)))
		file = FUNC5(&nd, op, flags | LOOKUP_REVAL);
	FUNC7();
	FUNC6(filename);
	return file;
}