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
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct f2fs_sb_info {int /*<<< orphan*/  sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EINVAL ; 
 int EPERM ; 
 int EROFS ; 
 struct f2fs_sb_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  SBI_CP_DISABLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct file*) ; 
 int FUNC8 (struct file*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct file *filp, unsigned long arg)
{
	struct inode *inode = FUNC5(filp);
	struct f2fs_sb_info *sbi = FUNC0(inode);
	int ret;

	if (!FUNC1(CAP_SYS_ADMIN))
		return -EPERM;

	if (FUNC3(sbi->sb))
		return -EROFS;

	if (FUNC9(FUNC6(sbi, SBI_CP_DISABLED))) {
		FUNC2(sbi, "Skipping Checkpoint. Checkpoints currently disabled.");
		return -EINVAL;
	}

	ret = FUNC8(filp);
	if (ret)
		return ret;

	ret = FUNC4(sbi->sb, 1);

	FUNC7(filp);
	return ret;
}