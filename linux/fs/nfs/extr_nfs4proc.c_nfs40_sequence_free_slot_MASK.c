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
struct nfs4_slot_table {int /*<<< orphan*/  slot_tbl_lock; } ;
struct nfs4_slot {struct nfs4_slot_table* table; } ;
struct nfs4_sequence_res {struct nfs4_slot* sr_slot; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs4_slot_table*,struct nfs4_slot*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_slot_table*,struct nfs4_slot*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct nfs4_sequence_res *res)
{
	struct nfs4_slot *slot = res->sr_slot;
	struct nfs4_slot_table *tbl;

	tbl = slot->table;
	FUNC2(&tbl->slot_tbl_lock);
	if (!FUNC0(tbl, slot))
		FUNC1(tbl, slot);
	FUNC3(&tbl->slot_tbl_lock);

	res->sr_slot = NULL;
}