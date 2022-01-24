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
struct nfs4_slot_table {int /*<<< orphan*/  complete; int /*<<< orphan*/  slot_waitq; int /*<<< orphan*/  slot_tbl_waitq; int /*<<< orphan*/  slot_tbl_lock; int /*<<< orphan*/  highest_used_slotid; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4_NO_SLOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct nfs4_slot_table *tbl, const char *queue)
{
	tbl->highest_used_slotid = NFS4_NO_SLOT;
	FUNC3(&tbl->slot_tbl_lock);
	FUNC2(&tbl->slot_tbl_waitq, queue);
	FUNC1(&tbl->slot_waitq);
	FUNC0(&tbl->complete);
}