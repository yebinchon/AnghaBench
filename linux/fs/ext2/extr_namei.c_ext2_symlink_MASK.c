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
struct super_block {unsigned int s_blocksize; } ;
struct inode {char* i_link; unsigned int i_size; int /*<<< orphan*/ * i_op; TYPE_1__* i_mapping; struct super_block* i_sb; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
struct TYPE_4__ {scalar_t__ i_data; } ;
struct TYPE_3__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  NOBH ; 
 int FUNC2 (struct inode*) ; 
 int S_IFLNK ; 
 int S_IRWXUGO ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*) ; 
 int FUNC5 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  ext2_aops ; 
 int /*<<< orphan*/  ext2_fast_symlink_inode_operations ; 
 struct inode* FUNC6 (struct inode*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ext2_nobh_aops ; 
 int /*<<< orphan*/  ext2_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,unsigned int) ; 
 int FUNC11 (struct inode*,char const*,unsigned int) ; 
 int FUNC12 (char const*) ; 
 scalar_t__ FUNC13 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14 (struct inode * dir, struct dentry * dentry,
	const char * symname)
{
	struct super_block * sb = dir->i_sb;
	int err = -ENAMETOOLONG;
	unsigned l = FUNC12(symname)+1;
	struct inode * inode;

	if (l > sb->s_blocksize)
		goto out;

	err = FUNC4(dir);
	if (err)
		goto out;

	inode = FUNC6 (dir, S_IFLNK | S_IRWXUGO, &dentry->d_name);
	err = FUNC2(inode);
	if (FUNC1(inode))
		goto out;

	if (l > sizeof (FUNC0(inode)->i_data)) {
		/* slow symlink */
		inode->i_op = &ext2_symlink_inode_operations;
		FUNC8(inode);
		if (FUNC13(inode->i_sb, NOBH))
			inode->i_mapping->a_ops = &ext2_nobh_aops;
		else
			inode->i_mapping->a_ops = &ext2_aops;
		err = FUNC11(inode, symname, l);
		if (err)
			goto out_fail;
	} else {
		/* fast symlink */
		inode->i_op = &ext2_fast_symlink_inode_operations;
		inode->i_link = (char*)FUNC0(inode)->i_data;
		FUNC10(inode->i_link, symname, l);
		inode->i_size = l-1;
	}
	FUNC9(inode);

	err = FUNC5(dentry, inode);
out:
	return err;

out_fail:
	FUNC7(inode);
	FUNC3(inode);
	goto out;
}