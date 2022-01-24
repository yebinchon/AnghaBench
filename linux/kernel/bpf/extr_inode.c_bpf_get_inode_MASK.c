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
struct super_block {int dummy; } ;
struct inode {int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ino; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOSPC ; 
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
#define  S_IFDIR 130 
#define  S_IFLNK 129 
 int S_IFMT ; 
#define  S_IFREG 128 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct inode const*,int) ; 
 struct inode* FUNC4 (struct super_block*) ; 

__attribute__((used)) static struct inode *FUNC5(struct super_block *sb,
				   const struct inode *dir,
				   umode_t mode)
{
	struct inode *inode;

	switch (mode & S_IFMT) {
	case S_IFDIR:
	case S_IFREG:
	case S_IFLNK:
		break;
	default:
		return FUNC0(-EINVAL);
	}

	inode = FUNC4(sb);
	if (!inode)
		return FUNC0(-ENOSPC);

	inode->i_ino = FUNC2();
	inode->i_atime = FUNC1(inode);
	inode->i_mtime = inode->i_atime;
	inode->i_ctime = inode->i_atime;

	FUNC3(inode, dir, mode);

	return inode;
}