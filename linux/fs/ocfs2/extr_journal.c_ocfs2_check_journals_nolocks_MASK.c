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
struct ocfs2_super {unsigned int max_slots; int /*<<< orphan*/ * slot_recovery_generations; } ;
struct TYPE_3__ {int /*<<< orphan*/  ij_flags; } ;
struct TYPE_4__ {TYPE_1__ journal1; } ;
struct ocfs2_dinode {TYPE_2__ id1; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int EROFS ; 
 int OCFS2_JOURNAL_DIRTY_FL ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_dinode*) ; 
 int FUNC4 (struct ocfs2_super*,unsigned int,struct buffer_head**,int /*<<< orphan*/ *) ; 

int FUNC5(struct ocfs2_super *osb)
{
	int ret = 0;
	unsigned int slot;
	struct buffer_head *di_bh = NULL;
	struct ocfs2_dinode *di;
	int journal_dirty = 0;

	for(slot = 0; slot < osb->max_slots; slot++) {
		ret = FUNC4(osb, slot, &di_bh, NULL);
		if (ret) {
			FUNC2(ret);
			goto out;
		}

		di = (struct ocfs2_dinode *) di_bh->b_data;

		osb->slot_recovery_generations[slot] =
					FUNC3(di);

		if (FUNC1(di->id1.journal1.ij_flags) &
		    OCFS2_JOURNAL_DIRTY_FL)
			journal_dirty = 1;

		FUNC0(di_bh);
		di_bh = NULL;
	}

out:
	if (journal_dirty)
		ret = -EROFS;
	return ret;
}