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
struct ocfs2_super {int dummy; } ;
struct ocfs2_space_resv {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; } ;
struct file {int f_mode; int /*<<< orphan*/  f_pos; } ;

/* Variables and functions */
 int EBADF ; 
 int EINVAL ; 
 int ENOTTY ; 
 int FMODE_WRITE ; 
 unsigned int OCFS2_IOC_RESVSP ; 
 unsigned int OCFS2_IOC_RESVSP64 ; 
 unsigned int OCFS2_IOC_UNRESVSP ; 
 unsigned int OCFS2_IOC_UNRESVSP64 ; 
 struct ocfs2_super* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct file*,struct inode*,int /*<<< orphan*/ ,unsigned int,struct ocfs2_space_resv*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 
 int FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_super*) ; 

int FUNC8(struct file *file, unsigned int cmd,
			    struct ocfs2_space_resv *sr)
{
	struct inode *inode = FUNC3(file);
	struct ocfs2_super *osb = FUNC0(inode->i_sb);
	int ret;

	if ((cmd == OCFS2_IOC_RESVSP || cmd == OCFS2_IOC_RESVSP64) &&
	    !FUNC7(osb))
		return -ENOTTY;
	else if ((cmd == OCFS2_IOC_UNRESVSP || cmd == OCFS2_IOC_UNRESVSP64) &&
		 !FUNC6(osb))
		return -ENOTTY;

	if (!FUNC1(inode->i_mode))
		return -EINVAL;

	if (!(file->f_mode & FMODE_WRITE))
		return -EBADF;

	ret = FUNC5(file);
	if (ret)
		return ret;
	ret = FUNC2(file, inode, file->f_pos, cmd, sr, 0);
	FUNC4(file);
	return ret;
}