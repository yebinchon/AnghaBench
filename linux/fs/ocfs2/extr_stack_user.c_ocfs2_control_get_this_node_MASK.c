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

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ocfs2_control_lock ; 
 int ocfs2_control_this_node ; 

__attribute__((used)) static int FUNC2(void)
{
	int rc;

	FUNC0(&ocfs2_control_lock);
	if (ocfs2_control_this_node < 0)
		rc = -EINVAL;
	else
		rc = ocfs2_control_this_node;
	FUNC1(&ocfs2_control_lock);

	return rc;
}