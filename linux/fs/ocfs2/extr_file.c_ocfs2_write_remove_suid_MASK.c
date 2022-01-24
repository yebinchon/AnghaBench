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
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct inode*,struct buffer_head**) ; 

__attribute__((used)) static int FUNC4(struct inode *inode)
{
	int ret;
	struct buffer_head *bh = NULL;

	ret = FUNC3(inode, &bh);
	if (ret < 0) {
		FUNC2(ret);
		goto out;
	}

	ret =  FUNC0(inode, bh);
out:
	FUNC1(bh);
	return ret;
}