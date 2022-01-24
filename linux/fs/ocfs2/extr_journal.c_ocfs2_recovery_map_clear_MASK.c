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
struct ocfs2_recovery_map {int rm_used; unsigned int* rm_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ocfs2_super *osb,
				     unsigned int node_num)
{
	int i;
	struct ocfs2_recovery_map *rm = osb->recovery_map;

	FUNC1(&osb->osb_lock);

	for (i = 0; i < rm->rm_used; i++) {
		if (rm->rm_entries[i] == node_num)
			break;
	}

	if (i < rm->rm_used) {
		/* XXX: be careful with the pointer math */
		FUNC0(&(rm->rm_entries[i]), &(rm->rm_entries[i + 1]),
			(rm->rm_used - i - 1) * sizeof(unsigned int));
		rm->rm_used--;
	}

	FUNC2(&osb->osb_lock);
}