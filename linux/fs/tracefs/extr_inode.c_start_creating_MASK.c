#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dentry {scalar_t__ d_inode; } ;
struct TYPE_4__ {struct dentry* mnt_root; } ;

/* Variables and functions */
 int EEXIST ; 
 struct dentry* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct dentry* FUNC5 (char const*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  trace_fs_type ; 
 TYPE_1__* tracefs_mount ; 
 int /*<<< orphan*/  tracefs_mount_count ; 

__attribute__((used)) static struct dentry *FUNC10(const char *name, struct dentry *parent)
{
	struct dentry *dentry;
	int error;

	FUNC6("tracefs: creating file '%s'\n",name);

	error = FUNC7(&trace_fs_type, &tracefs_mount,
			      &tracefs_mount_count);
	if (error)
		return FUNC0(error);

	/* If the parent is not specified, we create it in the root.
	 * We need the root dentry to do this, which is in the super
	 * block. A pointer to that is in the struct vfsmount that we
	 * have around.
	 */
	if (!parent)
		parent = tracefs_mount->mnt_root;

	FUNC3(parent->d_inode);
	dentry = FUNC5(name, parent, FUNC9(name));
	if (!FUNC1(dentry) && dentry->d_inode) {
		FUNC2(dentry);
		dentry = FUNC0(-EEXIST);
	}

	if (FUNC1(dentry)) {
		FUNC4(parent->d_inode);
		FUNC8(&tracefs_mount, &tracefs_mount_count);
	}

	return dentry;
}