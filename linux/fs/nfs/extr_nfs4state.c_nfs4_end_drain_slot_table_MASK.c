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
struct nfs4_slot_table {int /*<<< orphan*/  slot_tbl_lock; int /*<<< orphan*/  slot_tbl_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4_SLOT_TBL_DRAINING ; 
 int /*<<< orphan*/  FUNC0 (struct nfs4_slot_table*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct nfs4_slot_table *tbl)
{
	if (FUNC3(NFS4_SLOT_TBL_DRAINING, &tbl->slot_tbl_state)) {
		FUNC1(&tbl->slot_tbl_lock);
		FUNC0(tbl);
		FUNC2(&tbl->slot_tbl_lock);
	}
}