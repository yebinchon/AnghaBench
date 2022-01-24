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
struct inode {scalar_t__ i_flctx; } ;
struct file {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  size_t loff_t ;

/* Variables and functions */
 int EINVAL ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  F_RDLCK ; 
 int /*<<< orphan*/  F_WRLCK ; 
 int /*<<< orphan*/  MAY_READ ; 
 int /*<<< orphan*/  MAY_WRITE ; 
 int READ ; 
 struct inode* FUNC0 (struct file*) ; 
 int FUNC1 (struct inode*,struct file*,size_t,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int FUNC3 (struct file*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 

int FUNC6(int read_write, struct file *file, const loff_t *ppos, size_t count)
{
	struct inode *inode;
	int retval = -EINVAL;

	inode = FUNC0(file);
	if (FUNC4((ssize_t) count < 0))
		return retval;

	/*
	 * ranged mandatory locking does not apply to streams - it makes sense
	 * only for files where position has a meaning.
	 */
	if (ppos) {
		loff_t pos = *ppos;

		if (FUNC4(pos < 0)) {
			if (!FUNC5(file))
				return retval;
			if (count >= -pos) /* both values are in 0..LLONG_MAX */
				return -EOVERFLOW;
		} else if (FUNC4((loff_t) (pos + count) < 0)) {
			if (!FUNC5(file))
				return retval;
		}

		if (FUNC4(inode->i_flctx && FUNC2(inode))) {
			retval = FUNC1(inode, file, pos, pos + count - 1,
					read_write == READ ? F_RDLCK : F_WRLCK);
			if (retval < 0)
				return retval;
		}
	}

	return FUNC3(file,
				read_write == READ ? MAY_READ : MAY_WRITE);
}