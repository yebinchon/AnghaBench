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
struct super_block {int dummy; } ;
struct nilfs_root {int dummy; } ;
struct nilfs_inode {int dummy; } ;
struct nilfs_ifile_info {int dummy; } ;
struct inode {int i_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  palloc_cache; } ;

/* Variables and functions */
 int ENOMEM ; 
 int I_NEW ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NILFS_IFILE_INO ; 
 int /*<<< orphan*/  NILFS_MDT_GFP ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct super_block*,struct nilfs_root*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct inode*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct inode*,struct nilfs_inode*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 

int FUNC9(struct super_block *sb, struct nilfs_root *root,
		     size_t inode_size, struct nilfs_inode *raw_inode,
		     struct inode **inodep)
{
	struct inode *ifile;
	int err;

	ifile = FUNC2(sb, root, NILFS_IFILE_INO);
	if (FUNC7(!ifile))
		return -ENOMEM;
	if (!(ifile->i_state & I_NEW))
		goto out;

	err = FUNC3(ifile, NILFS_MDT_GFP,
			     sizeof(struct nilfs_ifile_info));
	if (err)
		goto failed;

	err = FUNC4(ifile, inode_size);
	if (err)
		goto failed;

	FUNC5(ifile, &FUNC0(ifile)->palloc_cache);

	err = FUNC6(ifile, raw_inode);
	if (err)
		goto failed;

	FUNC8(ifile);
 out:
	*inodep = ifile;
	return 0;
 failed:
	FUNC1(ifile);
	return err;
}