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
typedef  int /*<<< orphan*/  u16 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_alloc_context {int /*<<< orphan*/  ac_bh; int /*<<< orphan*/  ac_inode; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int FUNC0 (struct inode*,struct inode*,int /*<<< orphan*/ ,struct buffer_head**,struct buffer_head*,int /*<<< orphan*/ *,struct ocfs2_alloc_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,struct ocfs2_alloc_context*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ocfs2_super *osb,
			      struct inode *dir,
			      struct inode *inode,
			      dev_t dev,
			      struct buffer_head **new_fe_bh,
			      struct buffer_head *parent_fe_bh,
			      handle_t *handle,
			      struct ocfs2_alloc_context *inode_ac)
{
	int status = 0;
	u64 suballoc_loc, fe_blkno = 0;
	u16 suballoc_bit;

	*new_fe_bh = NULL;

	status = FUNC2(handle, dir, parent_fe_bh,
				       inode_ac, &suballoc_loc,
				       &suballoc_bit, &fe_blkno);
	if (status < 0) {
		FUNC1(status);
		return status;
	}

	status = FUNC0(dir, inode, dev, new_fe_bh,
				    parent_fe_bh, handle, inode_ac,
				    fe_blkno, suballoc_loc, suballoc_bit);
	if (status < 0) {
		u64 bg_blkno = FUNC4(fe_blkno, suballoc_bit);
		int tmp = FUNC3(handle, inode_ac->ac_inode,
				inode_ac->ac_bh, suballoc_bit, bg_blkno, 1);
		if (tmp)
			FUNC1(tmp);
	}

	return status;
}