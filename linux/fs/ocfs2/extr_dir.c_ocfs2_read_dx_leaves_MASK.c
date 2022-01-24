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
 int /*<<< orphan*/  ocfs2_validate_dx_leaf ; 

__attribute__((used)) static int FUNC3(struct inode *dir, u64 start, int num,
				struct buffer_head **dx_leaf_bhs)
{
	int ret;

	ret = FUNC2(FUNC0(dir), start, num, dx_leaf_bhs, 0,
				ocfs2_validate_dx_leaf);
	if (ret)
		FUNC1(ret);

	return ret;
}