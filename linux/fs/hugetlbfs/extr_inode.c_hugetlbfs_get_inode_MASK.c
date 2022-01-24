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
typedef  int umode_t ;
struct super_block {int dummy; } ;
struct resv_map {int /*<<< orphan*/  refs; } ;
struct inode {int /*<<< orphan*/ * i_op; int /*<<< orphan*/ * i_fop; TYPE_1__* i_mapping; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_ino; } ;
struct hugetlbfs_inode_info {int /*<<< orphan*/  seals; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_2__ {struct resv_map* private_data; int /*<<< orphan*/ * a_ops; int /*<<< orphan*/  i_mmap_rwsem; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_SEAL_SEAL ; 
 struct hugetlbfs_inode_info* FUNC0 (struct inode*) ; 
#define  S_IFDIR 130 
#define  S_IFLNK 129 
 int S_IFMT ; 
#define  S_IFREG 128 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  hugetlbfs_aops ; 
 int /*<<< orphan*/  hugetlbfs_dir_inode_operations ; 
 int /*<<< orphan*/  hugetlbfs_file_operations ; 
 int /*<<< orphan*/  hugetlbfs_i_mmap_rwsem_key ; 
 int /*<<< orphan*/  hugetlbfs_inode_operations ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct inode* FUNC12 (struct super_block*) ; 
 int /*<<< orphan*/  page_symlink_inode_operations ; 
 struct resv_map* FUNC13 () ; 
 int /*<<< orphan*/  resv_map_release ; 
 int /*<<< orphan*/  simple_dir_operations ; 

__attribute__((used)) static struct inode *FUNC14(struct super_block *sb,
					struct inode *dir,
					umode_t mode, dev_t dev)
{
	struct inode *inode;
	struct resv_map *resv_map = NULL;

	/*
	 * Reserve maps are only needed for inodes that can have associated
	 * page allocations.
	 */
	if (FUNC2(mode) || FUNC1(mode)) {
		resv_map = FUNC13();
		if (!resv_map)
			return NULL;
	}

	inode = FUNC12(sb);
	if (inode) {
		struct hugetlbfs_inode_info *info = FUNC0(inode);

		inode->i_ino = FUNC4();
		FUNC7(inode, dir, mode);
		FUNC11(&inode->i_mapping->i_mmap_rwsem,
				&hugetlbfs_i_mmap_rwsem_key);
		inode->i_mapping->a_ops = &hugetlbfs_aops;
		inode->i_atime = inode->i_mtime = inode->i_ctime = FUNC3(inode);
		inode->i_mapping->private_data = resv_map;
		info->seals = F_SEAL_SEAL;
		switch (mode & S_IFMT) {
		default:
			FUNC6(inode, mode, dev);
			break;
		case S_IFREG:
			inode->i_op = &hugetlbfs_inode_operations;
			inode->i_fop = &hugetlbfs_file_operations;
			break;
		case S_IFDIR:
			inode->i_op = &hugetlbfs_dir_inode_operations;
			inode->i_fop = &simple_dir_operations;

			/* directory inodes start off with i_nlink == 2 (for "." entry) */
			FUNC5(inode);
			break;
		case S_IFLNK:
			inode->i_op = &page_symlink_inode_operations;
			FUNC8(inode);
			break;
		}
		FUNC10(inode);
	} else {
		if (resv_map)
			FUNC9(&resv_map->refs, resv_map_release);
	}

	return inode;
}