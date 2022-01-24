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
struct inode_operations {int dummy; } ;
struct inode {int dummy; } ;
struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EEXIST ; 
 struct dentry* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 int FUNC3 (struct dentry*) ; 
 int S_IALLUGO ; 
 int S_IFMT ; 
 int S_IFREG ; 
 int FUNC4 (struct inode*,struct dentry*,int,void*,void*,struct file_operations const*,struct inode_operations const*) ; 
 int /*<<< orphan*/  aafs_count ; 
 int /*<<< orphan*/  aafs_mnt ; 
 int /*<<< orphan*/  aafs_ops ; 
 struct inode* FUNC5 (struct dentry*) ; 
 scalar_t__ FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 struct dentry* FUNC10 (char const*,struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 

__attribute__((used)) static struct dentry *FUNC14(const char *name, umode_t mode,
				  struct dentry *parent, void *data, void *link,
				  const struct file_operations *fops,
				  const struct inode_operations *iops)
{
	struct dentry *dentry;
	struct inode *dir;
	int error;

	FUNC0(!name);
	FUNC0(!parent);

	if (!(mode & S_IFMT))
		mode = (mode & S_IALLUGO) | S_IFREG;

	error = FUNC11(&aafs_ops, &aafs_mnt, &aafs_count);
	if (error)
		return FUNC1(error);

	dir = FUNC5(parent);

	FUNC8(dir);
	dentry = FUNC10(name, parent, FUNC13(name));
	if (FUNC2(dentry)) {
		error = FUNC3(dentry);
		goto fail_lock;
	}

	if (FUNC6(dentry)) {
		error = -EEXIST;
		goto fail_dentry;
	}

	error = FUNC4(dir, dentry, mode, data, link, fops, iops);
	if (error)
		goto fail_dentry;
	FUNC9(dir);

	return dentry;

fail_dentry:
	FUNC7(dentry);

fail_lock:
	FUNC9(dir);
	FUNC12(&aafs_mnt, &aafs_count);

	return FUNC1(error);
}