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
struct hpfs_dirent {scalar_t__ directory; scalar_t__ first; } ;
struct TYPE_3__ {unsigned char* name; unsigned int len; } ;
struct dentry {TYPE_1__ d_name; } ;
typedef  int /*<<< orphan*/  dnode_secno ;
struct TYPE_4__ {int /*<<< orphan*/  i_dno; } ;

/* Variables and functions */
 int EFSERROR ; 
 int EISDIR ; 
 int ENOENT ; 
 int ENOSPC ; 
 int EPERM ; 
 struct inode* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct inode*,int /*<<< orphan*/ ,struct hpfs_dirent*,struct quad_buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 struct hpfs_dirent* FUNC10 (struct inode*,int /*<<< orphan*/ ,unsigned char const*,unsigned int,int /*<<< orphan*/ *,struct quad_buffer_head*) ; 

__attribute__((used)) static int FUNC11(struct inode *dir, struct dentry *dentry)
{
	const unsigned char *name = dentry->d_name.name;
	unsigned len = dentry->d_name.len;
	struct quad_buffer_head qbh;
	struct hpfs_dirent *de;
	struct inode *inode = FUNC0(dentry);
	dnode_secno dno;
	int r;
	int err;

	FUNC6(dir->i_sb);
	FUNC2(name, &len);

	err = -ENOENT;
	de = FUNC10(dir, FUNC5(dir)->i_dno, name, len, &dno, &qbh);
	if (!de)
		goto out;

	err = -EPERM;
	if (de->first)
		goto out1;

	err = -EISDIR;
	if (de->directory)
		goto out1;

	r = FUNC7(dir, dno, de, &qbh, 1);
	switch (r) {
	case 1:
		FUNC4(dir->i_sb, "there was error when removing dirent");
		err = -EFSERROR;
		break;
	case 2:		/* no space for deleting */
		err = -ENOSPC;
		break;
	default:
		FUNC1(inode);
		err = 0;
	}
	goto out;

out1:
	FUNC3(&qbh);
out:
	if (!err)
		FUNC9(dir);
	FUNC8(dir->i_sb);
	return err;
}