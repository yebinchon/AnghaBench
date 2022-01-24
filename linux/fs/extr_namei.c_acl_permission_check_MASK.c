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
struct inode {unsigned int i_mode; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;

/* Variables and functions */
 int EACCES ; 
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int MAY_EXEC ; 
 int MAY_READ ; 
 int MAY_WRITE ; 
 unsigned int S_IRWXG ; 
 int FUNC1 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, int mask)
{
	unsigned int mode = inode->i_mode;

	if (FUNC4(FUNC5(FUNC2(), inode->i_uid)))
		mode >>= 6;
	else {
		if (FUNC0(inode) && (mode & S_IRWXG)) {
			int error = FUNC1(inode, mask);
			if (error != -EAGAIN)
				return error;
		}

		if (FUNC3(inode->i_gid))
			mode >>= 3;
	}

	/*
	 * If the DACs are ok we don't need any capability check.
	 */
	if ((mask & ~mode & (MAY_READ | MAY_WRITE | MAY_EXEC)) == 0)
		return 0;
	return -EACCES;
}