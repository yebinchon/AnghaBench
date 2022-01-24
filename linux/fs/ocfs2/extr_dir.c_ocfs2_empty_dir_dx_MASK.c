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
struct ocfs2_empty_dir_priv {int dx_dir; int seen_other; } ;
struct ocfs2_dx_root_block {int /*<<< orphan*/  dr_num_entries; } ;
struct ocfs2_dinode {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct inode*,struct ocfs2_dinode*,struct buffer_head**) ; 
 int FUNC4 (struct inode*,struct buffer_head**) ; 

__attribute__((used)) static int FUNC5(struct inode *inode,
			      struct ocfs2_empty_dir_priv *priv)
{
	int ret;
	struct buffer_head *di_bh = NULL;
	struct buffer_head *dx_root_bh = NULL;
	struct ocfs2_dinode *di;
	struct ocfs2_dx_root_block *dx_root;

	priv->dx_dir = 1;

	ret = FUNC4(inode, &di_bh);
	if (ret) {
		FUNC2(ret);
		goto out;
	}
	di = (struct ocfs2_dinode *)di_bh->b_data;

	ret = FUNC3(inode, di, &dx_root_bh);
	if (ret) {
		FUNC2(ret);
		goto out;
	}
	dx_root = (struct ocfs2_dx_root_block *)dx_root_bh->b_data;

	if (FUNC1(dx_root->dr_num_entries) != 2)
		priv->seen_other = 1;

out:
	FUNC0(di_bh);
	FUNC0(dx_root_bh);
	return ret;
}