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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct hpfs_dirent {int /*<<< orphan*/  directory; scalar_t__ first; } ;
struct TYPE_3__ {unsigned char* name; unsigned int len; } ;
struct dentry {TYPE_1__ d_name; } ;
typedef  int /*<<< orphan*/  dnode_secno ;
struct TYPE_4__ {int /*<<< orphan*/  i_dno; } ;

/* Variables and functions */
 int EFSERROR ; 
 int ENOENT ; 
 int ENOSPC ; 
 int ENOTDIR ; 
 int ENOTEMPTY ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char const*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct inode*,int /*<<< orphan*/ ,struct hpfs_dirent*,struct quad_buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 struct hpfs_dirent* FUNC12 (struct inode*,int /*<<< orphan*/ ,unsigned char const*,unsigned int,int /*<<< orphan*/ *,struct quad_buffer_head*) ; 

__attribute__((used)) static int FUNC13(struct inode *dir, struct dentry *dentry)
{
	const unsigned char *name = dentry->d_name.name;
	unsigned len = dentry->d_name.len;
	struct quad_buffer_head qbh;
	struct hpfs_dirent *de;
	struct inode *inode = FUNC1(dentry);
	dnode_secno dno;
	int n_items = 0;
	int err;
	int r;

	FUNC3(name, &len);
	FUNC8(dir->i_sb);
	err = -ENOENT;
	de = FUNC12(dir, FUNC7(dir)->i_dno, name, len, &dno, &qbh);
	if (!de)
		goto out;

	err = -EPERM;
	if (de->first)
		goto out1;

	err = -ENOTDIR;
	if (!de->directory)
		goto out1;

	FUNC5(dir->i_sb, FUNC7(inode)->i_dno, NULL, NULL, &n_items);
	err = -ENOTEMPTY;
	if (n_items)
		goto out1;

	r = FUNC9(dir, dno, de, &qbh, 1);
	switch (r) {
	case 1:
		FUNC6(dir->i_sb, "there was error when removing dirent");
		err = -EFSERROR;
		break;
	case 2:
		err = -ENOSPC;
		break;
	default:
		FUNC2(dir);
		FUNC0(inode);
		err = 0;
	}
	goto out;
out1:
	FUNC4(&qbh);
out:
	if (!err)
		FUNC11(dir);
	FUNC10(dir->i_sb);
	return err;
}