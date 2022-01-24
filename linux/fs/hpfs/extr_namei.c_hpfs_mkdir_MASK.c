#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int umode_t ;
struct quad_buffer_head {int dummy; } ;
struct TYPE_12__ {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_11__ {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_10__ {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {int i_ino; int i_mode; int i_blocks; int i_size; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; TYPE_4__ i_atime; TYPE_3__ i_mtime; TYPE_2__ i_ctime; } ;
struct hpfs_dirent {int directory; int read_only; int hidden; int first; void* fnode; void* read_date; void* write_date; void* creation_date; } ;
struct TYPE_15__ {TYPE_6__* external; } ;
struct TYPE_13__ {int n_free_nodes; int n_used_nodes; int /*<<< orphan*/  first_free; } ;
struct fnode {unsigned int len; TYPE_7__ u; TYPE_5__ btree; int /*<<< orphan*/  flags; void* up; int /*<<< orphan*/  name; } ;
struct dnode {int root_dnode; void* up; } ;
struct TYPE_9__ {unsigned char* name; unsigned int len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct buffer_head {int dummy; } ;
typedef  int fnode_secno ;
typedef  int dnode_secno ;
struct TYPE_16__ {int i_dno; int i_parent_dir; scalar_t__ i_ea_size; } ;
struct TYPE_14__ {void* file_secno; void* disk_secno; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FNODE_dir ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hpfs_dirent* FUNC7 (int /*<<< orphan*/ ,struct dnode*,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct inode*,unsigned char const*,unsigned int,struct hpfs_dirent*) ; 
 struct dnode* FUNC9 (int /*<<< orphan*/ ,int,int*,struct quad_buffer_head*) ; 
 struct fnode* FUNC10 (int /*<<< orphan*/ ,int,int*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC11 (struct quad_buffer_head*) ; 
 int FUNC12 (unsigned char const*,unsigned int*) ; 
 int /*<<< orphan*/  hpfs_dir_iops ; 
 int /*<<< orphan*/  hpfs_dir_ops ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_8__* FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*) ; 
 int /*<<< orphan*/  FUNC23 (struct inode*) ; 
 int /*<<< orphan*/  FUNC24 (struct inode*) ; 
 int /*<<< orphan*/  FUNC25 (void*) ; 
 int FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC30 (struct hpfs_dirent*,int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC34(struct inode *dir, struct dentry *dentry, umode_t mode)
{
	const unsigned char *name = dentry->d_name.name;
	unsigned len = dentry->d_name.len;
	struct quad_buffer_head qbh0;
	struct buffer_head *bh;
	struct hpfs_dirent *de;
	struct fnode *fnode;
	struct dnode *dnode;
	struct inode *result;
	fnode_secno fno;
	dnode_secno dno;
	int r;
	struct hpfs_dirent dee;
	int err;
	if ((err = FUNC12(name, &len))) return err==-ENOENT ? -EINVAL : err;
	FUNC17(dir->i_sb);
	err = -ENOSPC;
	fnode = FUNC10(dir->i_sb, FUNC15(dir)->i_dno, &fno, &bh);
	if (!fnode)
		goto bail;
	dnode = FUNC9(dir->i_sb, fno, &dno, &qbh0);
	if (!dnode)
		goto bail1;
	FUNC30(&dee, 0, sizeof dee);
	dee.directory = 1;
	if (!(mode & 0222)) dee.read_only = 1;
	/*dee.archive = 0;*/
	dee.hidden = name[0] == '.';
	dee.fnode = FUNC2(fno);
	dee.creation_date = dee.write_date = dee.read_date = FUNC2(FUNC26(dir->i_sb));
	result = FUNC31(dir->i_sb);
	if (!result)
		goto bail2;
	FUNC16(result);
	result->i_ino = fno;
	FUNC15(result)->i_parent_dir = dir->i_ino;
	FUNC15(result)->i_dno = dno;
	result->i_ctime.tv_sec = result->i_mtime.tv_sec = result->i_atime.tv_sec = FUNC27(dir->i_sb, FUNC25(dee.creation_date));
	result->i_ctime.tv_nsec = 0; 
	result->i_mtime.tv_nsec = 0; 
	result->i_atime.tv_nsec = 0; 
	FUNC15(result)->i_ea_size = 0;
	result->i_mode |= S_IFDIR;
	result->i_op = &hpfs_dir_iops;
	result->i_fop = &hpfs_dir_ops;
	result->i_blocks = 4;
	result->i_size = 2048;
	FUNC32(result, 2);
	if (dee.read_only)
		result->i_mode &= ~0222;

	r = FUNC8(dir, name, len, &dee);
	if (r == 1)
		goto bail3;
	if (r == -1) {
		err = -EEXIST;
		goto bail3;
	}
	fnode->len = len;
	FUNC29(fnode->name, name, len > 15 ? 15 : len);
	fnode->up = FUNC2(dir->i_ino);
	fnode->flags |= FNODE_dir;
	fnode->btree.n_free_nodes = 7;
	fnode->btree.n_used_nodes = 1;
	fnode->btree.first_free = FUNC1(0x14);
	fnode->u.external[0].disk_secno = FUNC2(dno);
	fnode->u.external[0].file_secno = FUNC2(-1);
	dnode->root_dnode = 1;
	dnode->up = FUNC2(fno);
	de = FUNC7(dir->i_sb, dnode, "\001\001", 2, 0);
	de->creation_date = de->write_date = de->read_date = FUNC2(FUNC26(dir->i_sb));
	if (!(mode & 0222)) de->read_only = 1;
	de->first = de->directory = 1;
	/*de->hidden = de->system = 0;*/
	de->fnode = FUNC2(fno);
	FUNC28(bh);
	FUNC0(bh);
	FUNC18(&qbh0);
	FUNC11(&qbh0);
	FUNC22(dir);
	FUNC23(result);

	if (!FUNC33(result->i_uid, FUNC4()) ||
	    !FUNC6(result->i_gid, FUNC3()) ||
	    result->i_mode != (mode | S_IFDIR)) {
		result->i_uid = FUNC4();
		result->i_gid = FUNC3();
		result->i_mode = mode | S_IFDIR;
		FUNC21(result);
	}
	FUNC20(dir);
	FUNC5(dentry, result);
	FUNC19(dir->i_sb);
	return 0;
bail3:
	FUNC24(result);
bail2:
	FUNC11(&qbh0);
	FUNC13(dir->i_sb, dno);
bail1:
	FUNC0(bh);
	FUNC14(dir->i_sb, fno, 1);
bail:
	FUNC19(dir->i_sb);
	return err;
}