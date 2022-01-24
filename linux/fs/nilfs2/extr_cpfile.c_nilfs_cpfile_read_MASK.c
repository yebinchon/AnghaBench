#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct super_block {size_t s_blocksize; } ;
struct nilfs_inode {int dummy; } ;
struct nilfs_cpfile_header {int dummy; } ;
struct inode {int i_state; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int I_NEW ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  NILFS_CPFILE_INO ; 
 int /*<<< orphan*/  NILFS_MDT_GFP ; 
 size_t NILFS_MIN_CHECKPOINT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (struct super_block*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,int /*<<< orphan*/ ,char*,size_t) ; 
 int FUNC5 (struct inode*,struct nilfs_inode*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 

int FUNC8(struct super_block *sb, size_t cpsize,
		      struct nilfs_inode *raw_inode, struct inode **inodep)
{
	struct inode *cpfile;
	int err;

	if (cpsize > sb->s_blocksize) {
		FUNC4(sb, KERN_ERR,
			  "too large checkpoint size: %zu bytes", cpsize);
		return -EINVAL;
	} else if (cpsize < NILFS_MIN_CHECKPOINT_SIZE) {
		FUNC4(sb, KERN_ERR,
			  "too small checkpoint size: %zu bytes", cpsize);
		return -EINVAL;
	}

	cpfile = FUNC1(sb, NULL, NILFS_CPFILE_INO);
	if (FUNC6(!cpfile))
		return -ENOMEM;
	if (!(cpfile->i_state & I_NEW))
		goto out;

	err = FUNC2(cpfile, NILFS_MDT_GFP, 0);
	if (err)
		goto failed;

	FUNC3(cpfile, cpsize,
				 sizeof(struct nilfs_cpfile_header));

	err = FUNC5(cpfile, raw_inode);
	if (err)
		goto failed;

	FUNC7(cpfile);
 out:
	*inodep = cpfile;
	return 0;
 failed:
	FUNC0(cpfile);
	return err;
}