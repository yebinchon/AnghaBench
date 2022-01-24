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
struct ocfs2_dinode {int /*<<< orphan*/  i_refcount_loc; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (struct inode*,struct buffer_head**) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, u64 *ref_blkno)
{
	int ret;
	struct buffer_head *di_bh = NULL;
	struct ocfs2_dinode *di;

	ret = FUNC5(inode, &di_bh);
	if (ret) {
		FUNC3(ret);
		goto out;
	}

	FUNC0(!FUNC4(inode));

	di = (struct ocfs2_dinode *)di_bh->b_data;
	*ref_blkno = FUNC2(di->i_refcount_loc);
	FUNC1(di_bh);
out:
	return ret;
}