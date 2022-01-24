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
typedef  int /*<<< orphan*/  vm_flags_t ;
struct vfsmount {int /*<<< orphan*/  mnt_sb; } ;
struct user_struct {int dummy; } ;
struct inode {size_t i_size; int /*<<< orphan*/  i_flags; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  pid; int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSPC ; 
 int /*<<< orphan*/  EPERM ; 
 struct file* FUNC0 (int /*<<< orphan*/ ) ; 
 int HUGETLB_SHMFS_INODE ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 int /*<<< orphan*/  O_RDWR ; 
 int S_IFREG ; 
 int S_IRWXUGO ; 
 int /*<<< orphan*/  S_PRIVATE ; 
 struct file* FUNC2 (struct inode*,struct vfsmount*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 TYPE_1__* current ; 
 struct user_struct* FUNC5 () ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct inode*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hugetlbfs_file_operations ; 
 struct inode* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct vfsmount** hugetlbfs_vfsmount ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 scalar_t__ FUNC15 (size_t,struct user_struct*) ; 
 int /*<<< orphan*/  FUNC16 (size_t,struct user_struct*) ; 

struct file *FUNC17(const char *name, size_t size,
				vm_flags_t acctflag, struct user_struct **user,
				int creat_flags, int page_size_log)
{
	struct inode *inode;
	struct vfsmount *mnt;
	int hstate_idx;
	struct file *file;

	hstate_idx = FUNC6(page_size_log);
	if (hstate_idx < 0)
		return FUNC0(-ENODEV);

	*user = NULL;
	mnt = hugetlbfs_vfsmount[hstate_idx];
	if (!mnt)
		return FUNC0(-ENOENT);

	if (creat_flags == HUGETLB_SHMFS_INODE && !FUNC3()) {
		*user = FUNC5();
		if (FUNC15(size, *user)) {
			FUNC13(current);
			FUNC12("%s (%d): Using mlock ulimits for SHM_HUGETLB is deprecated\n",
				current->comm, current->pid);
			FUNC14(current);
		} else {
			*user = NULL;
			return FUNC0(-EPERM);
		}
	}

	file = FUNC0(-ENOSPC);
	inode = FUNC10(mnt->mnt_sb, NULL, S_IFREG | S_IRWXUGO, 0);
	if (!inode)
		goto out;
	if (creat_flags == HUGETLB_SHMFS_INODE)
		inode->i_flags |= S_PRIVATE;

	inode->i_size = size;
	FUNC4(inode);

	if (FUNC9(inode, 0,
			size >> FUNC8(FUNC7(inode)), NULL,
			acctflag))
		file = FUNC0(-ENOMEM);
	else
		file = FUNC2(inode, mnt, name, O_RDWR,
					&hugetlbfs_file_operations);
	if (!FUNC1(file))
		return file;

	FUNC11(inode);
out:
	if (*user) {
		FUNC16(size, *user);
		*user = NULL;
	}
	return file;
}