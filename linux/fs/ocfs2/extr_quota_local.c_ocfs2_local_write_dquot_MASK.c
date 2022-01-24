#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct ocfs2_dquot {int /*<<< orphan*/  dq_local_phys_blk; } ;
struct inode {int dummy; } ;
struct TYPE_3__ {size_t type; } ;
struct dquot {TYPE_1__ dq_id; struct super_block* dq_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {struct inode** files; } ;

/* Variables and functions */
 struct ocfs2_dquot* FUNC0 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct inode*,struct buffer_head*,int /*<<< orphan*/ ,struct ocfs2_dquot*) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int /*<<< orphan*/  olq_set_dquot ; 
 TYPE_2__* FUNC5 (struct super_block*) ; 

int FUNC6(struct dquot *dquot)
{
	struct super_block *sb = dquot->dq_sb;
	struct ocfs2_dquot *od = FUNC0(dquot);
	struct buffer_head *bh;
	struct inode *lqinode = FUNC5(sb)->files[dquot->dq_id.type];
	int status;

	status = FUNC4(lqinode, od->dq_local_phys_blk,
					     &bh);
	if (status) {
		FUNC2(status);
		goto out;
	}
	status = FUNC3(lqinode, bh, olq_set_dquot, od);
	if (status < 0) {
		FUNC2(status);
		goto out;
	}
out:
	FUNC1(bh);
	return status;
}