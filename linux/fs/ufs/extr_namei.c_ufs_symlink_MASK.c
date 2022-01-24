#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct super_block {unsigned int s_blocksize; } ;
struct inode {char* i_link; unsigned int i_size; int /*<<< orphan*/ * i_op; TYPE_2__* i_mapping; struct super_block* i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_8__ {scalar_t__ i_symlink; } ;
struct TYPE_10__ {TYPE_3__ i_u1; } ;
struct TYPE_9__ {TYPE_1__* s_uspi; } ;
struct TYPE_7__ {int /*<<< orphan*/ * a_ops; } ;
struct TYPE_6__ {unsigned int s_maxsymlinklen; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int S_IFLNK ; 
 int S_IRWXUGO ; 
 TYPE_5__* FUNC2 (struct inode*) ; 
 TYPE_4__* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,unsigned int) ; 
 int FUNC9 (struct inode*,char const*,unsigned int) ; 
 int /*<<< orphan*/  page_symlink_inode_operations ; 
 int /*<<< orphan*/  simple_symlink_inode_operations ; 
 int FUNC10 (char const*) ; 
 int FUNC11 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  ufs_aops ; 
 struct inode* FUNC12 (struct inode*,int) ; 

__attribute__((used)) static int FUNC13 (struct inode * dir, struct dentry * dentry,
	const char * symname)
{
	struct super_block * sb = dir->i_sb;
	int err;
	unsigned l = FUNC10(symname)+1;
	struct inode * inode;

	if (l > sb->s_blocksize)
		return -ENAMETOOLONG;

	inode = FUNC12(dir, S_IFLNK | S_IRWXUGO);
	err = FUNC1(inode);
	if (FUNC0(inode))
		return err;

	if (l > FUNC3(sb)->s_uspi->s_maxsymlinklen) {
		/* slow symlink */
		inode->i_op = &page_symlink_inode_operations;
		FUNC6(inode);
		inode->i_mapping->a_ops = &ufs_aops;
		err = FUNC9(inode, symname, l);
		if (err)
			goto out_fail;
	} else {
		/* fast symlink */
		inode->i_op = &simple_symlink_inode_operations;
		inode->i_link = (char *)FUNC2(inode)->i_u1.i_symlink;
		FUNC8(inode->i_link, symname, l);
		inode->i_size = l-1;
	}
	FUNC7(inode);

	return FUNC11(dentry, inode);

out_fail:
	FUNC5(inode);
	FUNC4(inode);
	return err;
}