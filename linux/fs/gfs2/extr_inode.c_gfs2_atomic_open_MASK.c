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
typedef  int umode_t ;
struct inode {int dummy; } ;
struct file {int f_mode; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOENT ; 
 int FMODE_OPENED ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 unsigned int O_CREAT ; 
 unsigned int O_EXCL ; 
 int FUNC2 (struct dentry*) ; 
 int S_IFREG ; 
 struct dentry* FUNC3 (struct inode*,struct dentry*,struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 scalar_t__ FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int FUNC7 (struct file*,struct dentry*) ; 
 int FUNC8 (struct inode*,struct dentry*,struct file*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct inode *dir, struct dentry *dentry,
			    struct file *file, unsigned flags,
			    umode_t mode)
{
	struct dentry *d;
	bool excl = !!(flags & O_EXCL);

	if (!FUNC4(dentry))
		goto skip_lookup;

	d = FUNC3(dir, dentry, file);
	if (FUNC1(d))
		return FUNC2(d);
	if (d != NULL)
		dentry = d;
	if (FUNC5(dentry)) {
		if (!(file->f_mode & FMODE_OPENED))
			return FUNC7(file, d);
		FUNC6(d);
		return 0;
	}

	FUNC0(d != NULL);

skip_lookup:
	if (!(flags & O_CREAT))
		return -ENOENT;

	return FUNC8(dir, dentry, file, S_IFREG | mode, 0, NULL, 0, excl);
}