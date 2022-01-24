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
struct ocfs2_dinode {int /*<<< orphan*/  i_dx_root; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocfs2_validate_dx_root ; 

__attribute__((used)) static int FUNC3(struct inode *dir, struct ocfs2_dinode *di,
			      struct buffer_head **dx_root_bh)
{
	int ret;
	u64 blkno = FUNC1(di->i_dx_root);
	struct buffer_head *tmp = *dx_root_bh;

	ret = FUNC2(FUNC0(dir), blkno, &tmp,
			       ocfs2_validate_dx_root);

	/* If ocfs2_read_block() got us a new bh, pass it up. */
	if (!ret && !*dx_root_bh)
		*dx_root_bh = tmp;

	return ret;
}