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
typedef  int /*<<< orphan*/  u64 ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct buffer_head**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocfs2_validate_quota_block ; 

int FUNC3(struct inode *inode, u64 p_block,
				struct buffer_head **bhp)
{
	int rc;

	*bhp = NULL;
	rc = FUNC2(FUNC0(inode), p_block, 1, bhp, 0,
			       ocfs2_validate_quota_block);
	if (rc)
		FUNC1(rc);
	return rc;
}