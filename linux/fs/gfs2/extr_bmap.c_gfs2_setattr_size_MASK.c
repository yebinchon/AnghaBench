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
typedef  scalar_t__ u64 ;
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_mode; } ;
struct gfs2_inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct gfs2_inode* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*,scalar_t__) ; 
 int FUNC4 (struct inode*,scalar_t__) ; 
 int FUNC5 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (struct inode*,scalar_t__) ; 

int FUNC9(struct inode *inode, u64 newsize)
{
	struct gfs2_inode *ip = FUNC1(inode);
	int ret;

	FUNC0(!FUNC2(inode->i_mode));

	ret = FUNC8(inode, newsize);
	if (ret)
		return ret;

	FUNC7(inode);

	ret = FUNC5(ip);
	if (ret)
		goto out;

	if (newsize >= inode->i_size) {
		ret = FUNC3(inode, newsize);
		goto out;
	}

	ret = FUNC4(inode, newsize);
out:
	FUNC6(ip, NULL);
	return ret;
}