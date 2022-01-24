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
struct ocfs2_super {struct inode* osb_tl_inode; int /*<<< orphan*/  osb_tl_bh; int /*<<< orphan*/  ocfs2_wq; int /*<<< orphan*/  osb_truncate_log_wq; int /*<<< orphan*/  osb_tl_disable; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct ocfs2_super*) ; 

void FUNC7(struct ocfs2_super *osb)
{
	int status;
	struct inode *tl_inode = osb->osb_tl_inode;

	FUNC0(&osb->osb_tl_disable, 1);

	if (tl_inode) {
		FUNC2(&osb->osb_truncate_log_wq);
		FUNC3(osb->ocfs2_wq);

		status = FUNC6(osb);
		if (status < 0)
			FUNC5(status);

		FUNC1(osb->osb_tl_bh);
		FUNC4(osb->osb_tl_inode);
	}
}