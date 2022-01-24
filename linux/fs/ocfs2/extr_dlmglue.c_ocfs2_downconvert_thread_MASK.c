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
struct ocfs2_super {int /*<<< orphan*/ * dc_task; int /*<<< orphan*/  dc_event; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_super*) ; 
 scalar_t__ FUNC3 (struct ocfs2_super*) ; 
 scalar_t__ FUNC4 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(void *arg)
{
	struct ocfs2_super *osb = arg;

	/* only quit once we've been asked to stop and there is no more
	 * work available */
	while (!(FUNC0() &&
		FUNC3(osb))) {

		FUNC5(osb->dc_event,
					 FUNC4(osb) ||
					 FUNC0());

		FUNC1(0, "downconvert_thread: awoken\n");

		FUNC2(osb);
	}

	osb->dc_task = NULL;
	return 0;
}