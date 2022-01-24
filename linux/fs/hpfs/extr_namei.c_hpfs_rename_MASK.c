#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct quad_buffer_head {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_mode; } ;
struct hpfs_dirent {int hidden; int /*<<< orphan*/ * name; } ;
struct fnode {unsigned int len; int /*<<< orphan*/ * name; int /*<<< orphan*/  up; } ;
struct TYPE_3__ {unsigned char* name; unsigned int len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  dnode_secno ;
struct TYPE_4__ {int /*<<< orphan*/  i_parent_dir; int /*<<< orphan*/  i_dno; } ;

/* Variables and functions */
 int EFSERROR ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOSPC ; 
 unsigned int RENAME_NOREPLACE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct hpfs_dirent*,struct hpfs_dirent*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (struct inode*,unsigned char const*,unsigned int,struct hpfs_dirent*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char const*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (struct quad_buffer_head*) ; 
 int FUNC10 (unsigned char const*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 struct fnode* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC15 (struct quad_buffer_head*) ; 
 int FUNC16 (struct inode*,int /*<<< orphan*/ ,struct hpfs_dirent*,struct quad_buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 
 struct hpfs_dirent* FUNC20 (struct inode*,int /*<<< orphan*/ ,unsigned char const*,unsigned int,int /*<<< orphan*/ *,struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC21 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC24(struct inode *old_dir, struct dentry *old_dentry,
		       struct inode *new_dir, struct dentry *new_dentry,
		       unsigned int flags)
{
	const unsigned char *old_name = old_dentry->d_name.name;
	unsigned old_len = old_dentry->d_name.len;
	const unsigned char *new_name = new_dentry->d_name.name;
	unsigned new_len = new_dentry->d_name.len;
	struct inode *i = FUNC5(old_dentry);
	struct inode *new_inode = FUNC5(new_dentry);
	struct quad_buffer_head qbh, qbh1;
	struct hpfs_dirent *dep, *nde;
	struct hpfs_dirent de;
	dnode_secno dno;
	int r;
	struct buffer_head *bh;
	struct fnode *fnode;
	int err;

	if (flags & ~RENAME_NOREPLACE)
		return -EINVAL;

	if ((err = FUNC10(new_name, &new_len))) return err;
	err = 0;
	FUNC8(old_name, &old_len);

	FUNC13(i->i_sb);
	/* order doesn't matter, due to VFS exclusion */
	
	/* Erm? Moving over the empty non-busy directory is perfectly legal */
	if (new_inode && FUNC0(new_inode->i_mode)) {
		err = -EINVAL;
		goto end1;
	}

	if (!(dep = FUNC20(old_dir, FUNC12(old_dir)->i_dno, old_name, old_len, &dno, &qbh))) {
		FUNC11(i->i_sb, "lookup succeeded but map dirent failed");
		err = -ENOENT;
		goto end1;
	}
	FUNC3(&de, dep);
	de.hidden = new_name[0] == '.';

	if (new_inode) {
		int r;
		if ((r = FUNC16(old_dir, dno, dep, &qbh, 1)) != 2) {
			if ((nde = FUNC20(new_dir, FUNC12(new_dir)->i_dno, new_name, new_len, NULL, &qbh1))) {
				FUNC2(new_inode);
				FUNC3(nde, &de);
				FUNC22(nde->name, new_name, new_len);
				FUNC15(&qbh1);
				FUNC9(&qbh1);
				goto end;
			}
			FUNC11(new_dir->i_sb, "hpfs_rename: could not find dirent");
			err = -EFSERROR;
			goto end1;
		}
		err = -ENOSPC;
		goto end1;
	}

	if (new_dir == old_dir) FUNC9(&qbh);

	if ((r = FUNC7(new_dir, new_name, new_len, &de))) {
		if (r == -1) FUNC11(new_dir->i_sb, "hpfs_rename: dirent already exists!");
		err = r == 1 ? -ENOSPC : -EFSERROR;
		if (new_dir != old_dir) FUNC9(&qbh);
		goto end1;
	}
	
	if (new_dir == old_dir)
		if (!(dep = FUNC20(old_dir, FUNC12(old_dir)->i_dno, old_name, old_len, &dno, &qbh))) {
			FUNC11(i->i_sb, "lookup succeeded but map dirent failed at #2");
			err = -ENOENT;
			goto end1;
		}

	if ((r = FUNC16(old_dir, dno, dep, &qbh, 0))) {
		FUNC11(i->i_sb, "hpfs_rename: could not remove dirent");
		err = r == 2 ? -ENOSPC : -EFSERROR;
		goto end1;
	}

end:
	FUNC12(i)->i_parent_dir = new_dir->i_ino;
	if (FUNC0(i->i_mode)) {
		FUNC19(new_dir);
		FUNC6(old_dir);
	}
	if ((fnode = FUNC14(i->i_sb, i->i_ino, &bh))) {
		fnode->up = FUNC4(new_dir->i_ino);
		fnode->len = new_len;
		FUNC22(fnode->name, new_name, new_len>15?15:new_len);
		if (new_len < 15) FUNC23(&fnode->name[new_len], 0, 15 - new_len);
		FUNC21(bh);
		FUNC1(bh);
	}
end1:
	if (!err) {
		FUNC18(old_dir);
		FUNC18(new_dir);
	}
	FUNC17(i->i_sb);
	return err;
}