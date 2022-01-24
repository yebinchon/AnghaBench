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
struct inode {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLUSH_SYNC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int) ; 

int FUNC5(struct inode *inode)
{
	int ret;

	FUNC3(inode);

	ret = FUNC0(inode->i_mapping);
	if (ret)
		goto out;
	ret = FUNC1(inode, FLUSH_SYNC);
	if (ret < 0)
		goto out;
	FUNC2(inode, true);
	ret = 0;

out:
	FUNC4(inode, ret);
	return ret;
}