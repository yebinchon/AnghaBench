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
struct vfsmount {int /*<<< orphan*/  mnt_sb; } ;
struct inode {unsigned int i_flags; int /*<<< orphan*/  i_size; } ;
struct file {int /*<<< orphan*/  mnt_sb; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSPC ; 
 struct vfsmount* FUNC0 (struct vfsmount*) ; 
 struct vfsmount* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct vfsmount*) ; 
 int /*<<< orphan*/  MAX_LFS_FILESIZE ; 
 int /*<<< orphan*/  O_RDWR ; 
 int S_IFREG ; 
 int S_IRWXUGO ; 
 struct vfsmount* FUNC3 (struct inode*,struct vfsmount*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shmem_file_operations ; 
 struct inode* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static struct file *FUNC11(struct vfsmount *mnt, const char *name, loff_t size,
				       unsigned long flags, unsigned int i_flags)
{
	struct inode *inode;
	struct file *res;

	if (FUNC2(mnt))
		return FUNC0(mnt);

	if (size < 0 || size > MAX_LFS_FILESIZE)
		return FUNC1(-EINVAL);

	if (FUNC7(flags, size))
		return FUNC1(-ENOMEM);

	inode = FUNC8(mnt->mnt_sb, NULL, S_IFREG | S_IRWXUGO, 0,
				flags);
	if (FUNC10(!inode)) {
		FUNC9(flags, size);
		return FUNC1(-ENOSPC);
	}
	inode->i_flags |= i_flags;
	inode->i_size = size;
	FUNC4(inode);	/* It is unlinked */
	res = FUNC1(FUNC6(inode, size));
	if (!FUNC2(res))
		res = FUNC3(inode, mnt, name, O_RDWR,
				&shmem_file_operations);
	if (FUNC2(res))
		FUNC5(inode);
	return res;
}