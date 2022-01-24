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
struct inode {int /*<<< orphan*/  i_flags; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_LINUX_IMMUTABLE ; 
 long EACCES ; 
 long EPERM ; 
 int /*<<< orphan*/  O_WRONLY ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int S_APPEND ; 
 unsigned int S_IMMUTABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 struct inode* FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct file*) ; 
 long FUNC8 (struct file*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 long FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC12 (struct file*,unsigned int,unsigned long) ; 

__attribute__((used)) static long FUNC13(struct file *file, unsigned int cmd,
				unsigned long arg, unsigned int iflags)
{
	long ret;
	struct inode *inode = FUNC3(file);
	unsigned int old_iflags;

	if (!FUNC5(inode))
		return -EACCES;

	ret = FUNC8(file);
	if (ret)
		return ret;

	FUNC4(inode);

	/* Check the capability before cred override */
	ret = -EPERM;
	old_iflags = FUNC0(inode->i_flags);
	if (((iflags ^ old_iflags) & (S_APPEND | S_IMMUTABLE)) &&
	    !FUNC1(CAP_LINUX_IMMUTABLE))
		goto unlock;

	ret = FUNC11(FUNC2(file), O_WRONLY);
	if (ret)
		goto unlock;

	ret = FUNC12(file, cmd, arg);

	FUNC9(FUNC10(inode), inode);
unlock:
	FUNC6(inode);

	FUNC7(file);

	return ret;

}