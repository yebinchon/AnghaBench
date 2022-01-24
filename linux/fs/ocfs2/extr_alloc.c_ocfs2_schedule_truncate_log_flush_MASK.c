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
struct ocfs2_super {int /*<<< orphan*/  osb_truncate_log_wq; int /*<<< orphan*/  ocfs2_wq; int /*<<< orphan*/  osb_tl_disable; scalar_t__ osb_tl_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCFS2_TRUNCATE_LOG_FLUSH_INTERVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(struct ocfs2_super *osb,
				       int cancel)
{
	if (osb->osb_tl_inode &&
			FUNC0(&osb->osb_tl_disable) == 0) {
		/* We want to push off log flushes while truncates are
		 * still running. */
		if (cancel)
			FUNC1(&osb->osb_truncate_log_wq);

		FUNC2(osb->ocfs2_wq, &osb->osb_truncate_log_wq,
				   OCFS2_TRUNCATE_LOG_FLUSH_INTERVAL);
	}
}