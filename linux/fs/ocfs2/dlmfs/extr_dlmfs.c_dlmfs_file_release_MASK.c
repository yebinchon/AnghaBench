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
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_mode; } ;
struct file {struct dlmfs_filp_private* private_data; } ;
struct dlmfs_inode_private {int /*<<< orphan*/  ip_lockres; } ;
struct dlmfs_filp_private {int fp_lock_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct dlmfs_inode_private* FUNC1 (struct inode*) ; 
 int DLM_LOCK_IV ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dlmfs_filp_private*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(struct inode *inode,
			      struct file *file)
{
	int level;
	struct dlmfs_inode_private *ip = FUNC1(inode);
	struct dlmfs_filp_private *fp = file->private_data;

	if (FUNC2(inode->i_mode))
		FUNC0();

	FUNC4(0, "close called on inode %lu\n", inode->i_ino);

	if (fp) {
		level = fp->fp_lock_level;
		if (level != DLM_LOCK_IV)
			FUNC5(&ip->ip_lockres, level);

		FUNC3(fp);
		file->private_data = NULL;
	}

	return 0;
}