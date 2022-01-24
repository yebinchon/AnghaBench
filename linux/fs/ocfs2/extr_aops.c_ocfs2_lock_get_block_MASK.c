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
struct ocfs2_inode_info {int /*<<< orphan*/  ip_alloc_sem; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 struct ocfs2_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ,struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, sector_t iblock,
		    struct buffer_head *bh_result, int create)
{
	int ret = 0;
	struct ocfs2_inode_info *oi = FUNC0(inode);

	FUNC1(&oi->ip_alloc_sem);
	ret = FUNC2(inode, iblock, bh_result, create);
	FUNC3(&oi->ip_alloc_sem);

	return ret;
}