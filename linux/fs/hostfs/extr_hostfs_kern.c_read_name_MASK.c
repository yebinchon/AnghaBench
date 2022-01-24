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
struct inode {int i_mode; int /*<<< orphan*/  i_blocks; int /*<<< orphan*/  i_size; void* i_ctime; void* i_mtime; void* i_atime; int /*<<< orphan*/  i_ino; TYPE_1__* i_mapping; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct hostfs_stat {int mode; int /*<<< orphan*/  blocks; int /*<<< orphan*/  size; int /*<<< orphan*/  ctime; int /*<<< orphan*/  mtime; int /*<<< orphan*/  atime; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  nlink; int /*<<< orphan*/  ino; int /*<<< orphan*/  min; int /*<<< orphan*/  maj; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  S_IFBLK 134 
#define  S_IFCHR 133 
#define  S_IFDIR 132 
#define  S_IFIFO 131 
#define  S_IFLNK 130 
 int S_IFMT ; 
#define  S_IFREG 129 
#define  S_IFSOCK 128 
 int /*<<< orphan*/  hostfs_aops ; 
 int /*<<< orphan*/  hostfs_dir_fops ; 
 int /*<<< orphan*/  hostfs_dir_iops ; 
 int /*<<< orphan*/  hostfs_file_fops ; 
 int /*<<< orphan*/  hostfs_iops ; 
 int /*<<< orphan*/  hostfs_link_iops ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,struct hostfs_stat*,int) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct inode *ino, char *name)
{
	dev_t rdev;
	struct hostfs_stat st;
	int err = FUNC5(name, &st, -1);
	if (err)
		return err;

	/* Reencode maj and min with the kernel encoding.*/
	rdev = FUNC0(st.maj, st.min);

	switch (st.mode & S_IFMT) {
	case S_IFLNK:
		ino->i_op = &hostfs_link_iops;
		break;
	case S_IFDIR:
		ino->i_op = &hostfs_dir_iops;
		ino->i_fop = &hostfs_dir_fops;
		break;
	case S_IFCHR:
	case S_IFBLK:
	case S_IFIFO:
	case S_IFSOCK:
		FUNC3(ino, st.mode & S_IFMT, rdev);
		ino->i_op = &hostfs_iops;
		break;
	case S_IFREG:
		ino->i_op = &hostfs_iops;
		ino->i_fop = &hostfs_file_fops;
		ino->i_mapping->a_ops = &hostfs_aops;
		break;
	default:
		return -EIO;
	}

	ino->i_ino = st.ino;
	ino->i_mode = st.mode;
	FUNC4(ino, st.nlink);
	FUNC2(ino, st.uid);
	FUNC1(ino, st.gid);
	ino->i_atime = FUNC6(st.atime);
	ino->i_mtime = FUNC6(st.mtime);
	ino->i_ctime = FUNC6(st.ctime);
	ino->i_size = st.size;
	ino->i_blocks = st.blocks;
	return 0;
}