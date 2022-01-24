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
struct ocfs2_super {int /*<<< orphan*/  s_num_meta_stolen; int /*<<< orphan*/  osb_lock; int /*<<< orphan*/  s_meta_steal_slot; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCFS2_INVALID_SLOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ocfs2_super *osb)
{
	FUNC1(&osb->osb_lock);
	osb->s_meta_steal_slot = OCFS2_INVALID_SLOT;
	FUNC2(&osb->osb_lock);
	FUNC0(&osb->s_num_meta_stolen, 0);
}