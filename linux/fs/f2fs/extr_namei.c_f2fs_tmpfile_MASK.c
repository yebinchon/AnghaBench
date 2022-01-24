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
typedef  int /*<<< orphan*/  umode_t ;
struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct f2fs_sb_info*) ; 
 int EIO ; 
 int ENOSPC ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*) ; 
 int FUNC6 (struct inode*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct inode *dir, struct dentry *dentry, umode_t mode)
{
	struct f2fs_sb_info *sbi = FUNC1(dir);

	if (FUNC7(FUNC4(sbi)))
		return -EIO;
	if (!FUNC5(sbi))
		return -ENOSPC;

	if (FUNC2(dir) || FUNC0(sbi)) {
		int err = FUNC6(dir);
		if (err)
			return err;
	}

	return FUNC3(dir, dentry, mode, NULL);
}