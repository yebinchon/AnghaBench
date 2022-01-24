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
struct ocfs2_super {int /*<<< orphan*/  osb_lock; struct ocfs2_recovery_map* recovery_map; } ;
struct ocfs2_recovery_map {scalar_t__ rm_used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct ocfs2_super *osb)
{
	int empty;
	struct ocfs2_recovery_map *rm = osb->recovery_map;

	FUNC0(&osb->osb_lock);
	empty = (rm->rm_used == 0);
	FUNC1(&osb->osb_lock);

	return empty;
}