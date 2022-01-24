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
struct nfs4_slot_table {scalar_t__ highest_used_slotid; int /*<<< orphan*/  slot_tbl_lock; int /*<<< orphan*/  complete; int /*<<< orphan*/  slot_tbl_state; } ;

/* Variables and functions */
 scalar_t__ NFS4_NO_SLOT ; 
 int /*<<< orphan*/  NFS4_SLOT_TBL_DRAINING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct nfs4_slot_table *tbl)
{
	FUNC1(NFS4_SLOT_TBL_DRAINING, &tbl->slot_tbl_state);
	FUNC2(&tbl->slot_tbl_lock);
	if (tbl->highest_used_slotid != NFS4_NO_SLOT) {
		FUNC0(&tbl->complete);
		FUNC3(&tbl->slot_tbl_lock);
		return FUNC4(&tbl->complete);
	}
	FUNC3(&tbl->slot_tbl_lock);
	return 0;
}