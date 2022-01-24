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
struct vfsmount {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct inode*,struct vfsmount*) ; 
 int FUNC5 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct buffer_head*) ; 

int FUNC7(struct inode *inode,
			  struct vfsmount *vfsmnt,
			  int *level, int wait)
{
	int ret;

	if (wait)
		ret = FUNC2(inode, NULL, 0);
	else
		ret = FUNC5(inode, NULL, 0);

	if (ret < 0) {
		if (ret != -EAGAIN)
			FUNC1(ret);
		return ret;
	}

	/*
	 * If we should update atime, we will get EX lock,
	 * otherwise we just get PR lock.
	 */
	if (FUNC4(inode, vfsmnt)) {
		struct buffer_head *bh = NULL;

		FUNC3(inode, 0);
		if (wait)
			ret = FUNC2(inode, &bh, 1);
		else
			ret = FUNC5(inode, &bh, 1);

		if (ret < 0) {
			if (ret != -EAGAIN)
				FUNC1(ret);
			return ret;
		}
		*level = 1;
		if (FUNC4(inode, vfsmnt))
			FUNC6(inode, bh);
		FUNC0(bh);
	} else
		*level = 0;

	return ret;
}