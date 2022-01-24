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
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct ocfs2_dx_root_block {int /*<<< orphan*/  dr_list; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ocfs2_super *osb,
					  struct ocfs2_dx_root_block *dx_root)
{
	int credits = FUNC1(osb->sb, 3);

	credits += FUNC0(osb->sb, &dx_root->dr_list);
	credits += FUNC2(osb->sb);
	return credits;
}