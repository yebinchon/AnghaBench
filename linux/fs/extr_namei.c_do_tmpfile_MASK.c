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
struct path {int /*<<< orphan*/  mnt; struct dentry* dentry; } ;
struct open_flags {int /*<<< orphan*/  open_flag; int /*<<< orphan*/  mode; } ;
struct nameidata {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  mnt; } ;
struct file {TYPE_1__ f_path; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 unsigned int LOOKUP_DIRECTORY ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int FUNC4 (struct file*,struct dentry*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct nameidata*,unsigned int,struct path*) ; 
 int /*<<< orphan*/  FUNC9 (struct path*) ; 
 scalar_t__ FUNC10 (int) ; 
 struct dentry* FUNC11 (struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct nameidata *nd, unsigned flags,
		const struct open_flags *op,
		struct file *file)
{
	struct dentry *child;
	struct path path;
	int error = FUNC8(nd, flags | LOOKUP_DIRECTORY, &path);
	if (FUNC10(error))
		return error;
	error = FUNC7(path.mnt);
	if (FUNC10(error))
		goto out;
	child = FUNC11(path.dentry, op->mode, op->open_flag);
	error = FUNC1(child);
	if (FUNC0(child))
		goto out2;
	FUNC3(path.dentry);
	path.dentry = child;
	FUNC2(nd->name, child, 0);
	/* Don't check for other permissions, the inode was just created */
	error = FUNC5(&path, 0, op->open_flag);
	if (error)
		goto out2;
	file->f_path.mnt = path.mnt;
	error = FUNC4(file, child, NULL);
out2:
	FUNC6(path.mnt);
out:
	FUNC9(&path);
	return error;
}