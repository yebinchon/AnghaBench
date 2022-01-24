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
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int AOP_TRUNCATED_PAGE ; 
 int EAGAIN ; 
 int /*<<< orphan*/  OCFS2_LOCK_NONBLOCK ; 
 scalar_t__ FUNC0 (struct inode*,struct buffer_head**,int) ; 
 int FUNC1 (struct inode*,struct buffer_head**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 

int FUNC4(struct inode *inode,
			      struct buffer_head **ret_bh,
			      int ex,
			      struct page *page)
{
	int ret;

	ret = FUNC1(inode, ret_bh, ex, OCFS2_LOCK_NONBLOCK);
	if (ret == -EAGAIN) {
		FUNC3(page);
		/*
		 * If we can't get inode lock immediately, we should not return
		 * directly here, since this will lead to a softlockup problem.
		 * The method is to get a blocking lock and immediately unlock
		 * before returning, this can avoid CPU resource waste due to
		 * lots of retries, and benefits fairness in getting lock.
		 */
		if (FUNC0(inode, ret_bh, ex) == 0)
			FUNC2(inode, ex);
		ret = AOP_TRUNCATED_PAGE;
	}

	return ret;
}