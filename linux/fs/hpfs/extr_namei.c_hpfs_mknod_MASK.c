#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int umode_t ;
struct TYPE_10__ {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_9__ {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_8__ {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {int i_blocks; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; scalar_t__ i_size; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; TYPE_4__ i_atime; TYPE_3__ i_mtime; TYPE_2__ i_ctime; } ;
struct hpfs_dirent {int read_only; int archive; int hidden; void* creation_date; void* read_date; void* write_date; void* fnode; } ;
struct fnode {unsigned int len; void* up; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {unsigned char* name; unsigned int len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  fnode_secno ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_12__ {scalar_t__ i_ea_size; int /*<<< orphan*/  i_parent_dir; int /*<<< orphan*/  i_dno; } ;
struct TYPE_11__ {int sb_eas; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOSPC ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,struct inode*) ; 
 int FUNC5 (struct inode*,unsigned char const*,unsigned int,struct hpfs_dirent*) ; 
 struct fnode* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct buffer_head**) ; 
 int FUNC7 (unsigned char const*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_6__* FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (void*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct hpfs_dirent*,int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct inode*,int) ; 

__attribute__((used)) static int FUNC27(struct inode *dir, struct dentry *dentry, umode_t mode, dev_t rdev)
{
	const unsigned char *name = dentry->d_name.name;
	unsigned len = dentry->d_name.len;
	struct buffer_head *bh;
	struct fnode *fnode;
	fnode_secno fno;
	int r;
	struct hpfs_dirent dee;
	struct inode *result = NULL;
	int err;
	if ((err = FUNC7(name, &len))) return err==-ENOENT ? -EINVAL : err;
	if (FUNC12(dir->i_sb)->sb_eas < 2) return -EPERM;
	FUNC11(dir->i_sb);
	err = -ENOSPC;
	fnode = FUNC6(dir->i_sb, FUNC9(dir)->i_dno, &fno, &bh);
	if (!fnode)
		goto bail;
	FUNC24(&dee, 0, sizeof dee);
	if (!(mode & 0222)) dee.read_only = 1;
	dee.archive = 1;
	dee.hidden = name[0] == '.';
	dee.fnode = FUNC1(fno);
	dee.creation_date = dee.write_date = dee.read_date = FUNC1(FUNC20(dir->i_sb));

	result = FUNC25(dir->i_sb);
	if (!result)
		goto bail1;

	FUNC10(result);
	result->i_ino = fno;
	FUNC9(result)->i_parent_dir = dir->i_ino;
	result->i_ctime.tv_sec = result->i_mtime.tv_sec = result->i_atime.tv_sec = FUNC21(dir->i_sb, FUNC19(dee.creation_date));
	result->i_ctime.tv_nsec = 0;
	result->i_mtime.tv_nsec = 0;
	result->i_atime.tv_nsec = 0;
	FUNC9(result)->i_ea_size = 0;
	result->i_uid = FUNC3();
	result->i_gid = FUNC2();
	FUNC26(result, 1);
	result->i_size = 0;
	result->i_blocks = 1;
	FUNC16(result, mode, rdev);

	r = FUNC5(dir, name, len, &dee);
	if (r == 1)
		goto bail2;
	if (r == -1) {
		err = -EEXIST;
		goto bail2;
	}
	fnode->len = len;
	FUNC23(fnode->name, name, len > 15 ? 15 : len);
	fnode->up = FUNC1(dir->i_ino);
	FUNC22(bh);

	FUNC17(result);

	FUNC15(result);
	FUNC14(dir);
	FUNC4(dentry, result);
	FUNC0(bh);
	FUNC13(dir->i_sb);
	return 0;
bail2:
	FUNC18(result);
bail1:
	FUNC0(bh);
	FUNC8(dir->i_sb, fno, 1);
bail:
	FUNC13(dir->i_sb);
	return err;
}