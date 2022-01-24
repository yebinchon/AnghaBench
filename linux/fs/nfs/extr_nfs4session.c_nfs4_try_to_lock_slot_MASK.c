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
struct nfs4_slot_table {int dummy; } ;
struct nfs4_slot {int /*<<< orphan*/  slot_nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs4_slot_table*,struct nfs4_slot*) ; 
 scalar_t__ FUNC1 (struct nfs4_slot_table*,int /*<<< orphan*/ ) ; 

bool FUNC2(struct nfs4_slot_table *tbl, struct nfs4_slot *slot)
{
	if (FUNC1(tbl, slot->slot_nr))
		return false;
	FUNC0(tbl, slot);
	return true;
}