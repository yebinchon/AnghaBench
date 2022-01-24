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
struct TYPE_11__ {int /*<<< orphan*/ * a_ops; } ;
struct TYPE_10__ {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_9__ {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_8__ {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {int i_mode; int i_blocks; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_ino; TYPE_5__ i_data; scalar_t__ i_size; TYPE_4__ i_atime; TYPE_3__ i_mtime; TYPE_2__ i_ctime; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct hpfs_dirent {int read_only; int archive; int hidden; void* creation_date; void* read_date; void* write_date; void* fnode; } ;
struct fnode {unsigned int len; void* up; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {unsigned char* name; unsigned int len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  fnode_secno ;
struct TYPE_12__ {scalar_t__ mmu_private; scalar_t__ i_ea_size; int /*<<< orphan*/  i_parent_dir; int /*<<< orphan*/  i_dno; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOSPC ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inode*,unsigned char const*,unsigned int,struct hpfs_dirent*) ; 
 struct fnode* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct buffer_head**) ; 
 int /*<<< orphan*/  hpfs_aops ; 
 int FUNC8 (unsigned char const*,unsigned int*) ; 
 int /*<<< orphan*/  hpfs_file_iops ; 
 int /*<<< orphan*/  hpfs_file_ops ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_6__* FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (void*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct hpfs_dirent*,int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC27(struct inode *dir, struct dentry *dentry, umode_t mode, bool excl)
{
	const unsigned char *name = dentry->d_name.name;
	unsigned len = dentry->d_name.len;
	struct inode *result = NULL;
	struct buffer_head *bh;
	struct fnode *fnode;
	fnode_secno fno;
	int r;
	struct hpfs_dirent dee;
	int err;
	if ((err = FUNC8(name, &len)))
		return err==-ENOENT ? -EINVAL : err;
	FUNC12(dir->i_sb);
	err = -ENOSPC;
	fnode = FUNC7(dir->i_sb, FUNC10(dir)->i_dno, &fno, &bh);
	if (!fnode)
		goto bail;
	FUNC23(&dee, 0, sizeof dee);
	if (!(mode & 0222)) dee.read_only = 1;
	dee.archive = 1;
	dee.hidden = name[0] == '.';
	dee.fnode = FUNC1(fno);
	dee.creation_date = dee.write_date = dee.read_date = FUNC1(FUNC19(dir->i_sb));

	result = FUNC24(dir->i_sb);
	if (!result)
		goto bail1;
	
	FUNC11(result);
	result->i_ino = fno;
	result->i_mode |= S_IFREG;
	result->i_mode &= ~0111;
	result->i_op = &hpfs_file_iops;
	result->i_fop = &hpfs_file_ops;
	FUNC25(result, 1);
	FUNC10(result)->i_parent_dir = dir->i_ino;
	result->i_ctime.tv_sec = result->i_mtime.tv_sec = result->i_atime.tv_sec = FUNC20(dir->i_sb, FUNC18(dee.creation_date));
	result->i_ctime.tv_nsec = 0;
	result->i_mtime.tv_nsec = 0;
	result->i_atime.tv_nsec = 0;
	FUNC10(result)->i_ea_size = 0;
	if (dee.read_only)
		result->i_mode &= ~0222;
	result->i_blocks = 1;
	result->i_size = 0;
	result->i_data.a_ops = &hpfs_aops;
	FUNC10(result)->mmu_private = 0;

	r = FUNC6(dir, name, len, &dee);
	if (r == 1)
		goto bail2;
	if (r == -1) {
		err = -EEXIST;
		goto bail2;
	}
	fnode->len = len;
	FUNC22(fnode->name, name, len > 15 ? 15 : len);
	fnode->up = FUNC1(dir->i_ino);
	FUNC21(bh);
	FUNC0(bh);

	FUNC16(result);

	if (!FUNC26(result->i_uid, FUNC3()) ||
	    !FUNC5(result->i_gid, FUNC2()) ||
	    result->i_mode != (mode | S_IFREG)) {
		result->i_uid = FUNC3();
		result->i_gid = FUNC2();
		result->i_mode = mode | S_IFREG;
		FUNC15(result);
	}
	FUNC14(dir);
	FUNC4(dentry, result);
	FUNC13(dir->i_sb);
	return 0;

bail2:
	FUNC17(result);
bail1:
	FUNC0(bh);
	FUNC9(dir->i_sb, fno, 1);
bail:
	FUNC13(dir->i_sb);
	return err;
}