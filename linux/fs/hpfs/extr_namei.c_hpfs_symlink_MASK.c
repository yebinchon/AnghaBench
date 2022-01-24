#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/ * a_ops; } ;
struct TYPE_11__ {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_10__ {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_9__ {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {int i_mode; int i_blocks; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; TYPE_5__ i_data; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; TYPE_4__ i_atime; TYPE_3__ i_mtime; TYPE_2__ i_ctime; } ;
struct hpfs_dirent {int archive; int hidden; void* creation_date; void* read_date; void* write_date; void* fnode; } ;
struct fnode {unsigned int len; void* up; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {unsigned char* name; unsigned int len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  fnode_secno ;
struct TYPE_14__ {scalar_t__ i_ea_size; int /*<<< orphan*/  i_parent_dir; int /*<<< orphan*/  i_dno; } ;
struct TYPE_13__ {int sb_eas; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOSPC ; 
 int EPERM ; 
 int S_IFLNK ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,struct inode*) ; 
 int FUNC5 (struct inode*,unsigned char const*,unsigned int,struct hpfs_dirent*) ; 
 struct fnode* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct buffer_head**) ; 
 int FUNC7 (unsigned char const*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_7__* FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,struct fnode*,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hpfs_symlink_aops ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 
 int /*<<< orphan*/  FUNC20 (void*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct hpfs_dirent*,int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  page_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC27 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC28 (char const*) ; 

__attribute__((used)) static int FUNC29(struct inode *dir, struct dentry *dentry, const char *symlink)
{
	const unsigned char *name = dentry->d_name.name;
	unsigned len = dentry->d_name.len;
	struct buffer_head *bh;
	struct fnode *fnode;
	fnode_secno fno;
	int r;
	struct hpfs_dirent dee;
	struct inode *result;
	int err;
	if ((err = FUNC7(name, &len))) return err==-ENOENT ? -EINVAL : err;
	FUNC11(dir->i_sb);
	if (FUNC12(dir->i_sb)->sb_eas < 2) {
		FUNC14(dir->i_sb);
		return -EPERM;
	}
	err = -ENOSPC;
	fnode = FUNC6(dir->i_sb, FUNC9(dir)->i_dno, &fno, &bh);
	if (!fnode)
		goto bail;
	FUNC25(&dee, 0, sizeof dee);
	dee.archive = 1;
	dee.hidden = name[0] == '.';
	dee.fnode = FUNC1(fno);
	dee.creation_date = dee.write_date = dee.read_date = FUNC1(FUNC21(dir->i_sb));

	result = FUNC26(dir->i_sb);
	if (!result)
		goto bail1;
	result->i_ino = fno;
	FUNC10(result);
	FUNC9(result)->i_parent_dir = dir->i_ino;
	result->i_ctime.tv_sec = result->i_mtime.tv_sec = result->i_atime.tv_sec = FUNC22(dir->i_sb, FUNC20(dee.creation_date));
	result->i_ctime.tv_nsec = 0;
	result->i_mtime.tv_nsec = 0;
	result->i_atime.tv_nsec = 0;
	FUNC9(result)->i_ea_size = 0;
	result->i_mode = S_IFLNK | 0777;
	result->i_uid = FUNC3();
	result->i_gid = FUNC2();
	result->i_blocks = 1;
	FUNC27(result, 1);
	result->i_size = FUNC28(symlink);
	FUNC17(result);
	result->i_op = &page_symlink_inode_operations;
	result->i_data.a_ops = &hpfs_symlink_aops;

	r = FUNC5(dir, name, len, &dee);
	if (r == 1)
		goto bail2;
	if (r == -1) {
		err = -EEXIST;
		goto bail2;
	}
	fnode->len = len;
	FUNC24(fnode->name, name, len > 15 ? 15 : len);
	fnode->up = FUNC1(dir->i_ino);
	FUNC13(result, fnode, "SYMLINK", symlink, FUNC28(symlink));
	FUNC23(bh);
	FUNC0(bh);

	FUNC18(result);

	FUNC16(result);
	FUNC15(dir);
	FUNC4(dentry, result);
	FUNC14(dir->i_sb);
	return 0;
bail2:
	FUNC19(result);
bail1:
	FUNC0(bh);
	FUNC8(dir->i_sb, fno, 1);
bail:
	FUNC14(dir->i_sb);
	return err;
}