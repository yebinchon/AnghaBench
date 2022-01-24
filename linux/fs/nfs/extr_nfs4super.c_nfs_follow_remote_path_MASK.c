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
struct dentry {int dummy; } ;

/* Variables and functions */
 struct dentry* FUNC0 (struct vfsmount*) ; 
 struct dentry* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC3 (struct vfsmount*) ; 
 struct dentry* FUNC4 (struct vfsmount*,char const*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static struct dentry *FUNC7(struct vfsmount *root_mnt,
		const char *export_path)
{
	struct dentry *dentry;
	int err;

	if (FUNC2(root_mnt))
		return FUNC0(root_mnt);

	err = FUNC5();
	if (err) {
		FUNC3(root_mnt);
		return FUNC1(err);
	}

	dentry = FUNC4(root_mnt, export_path);
	FUNC6();

	return dentry;
}