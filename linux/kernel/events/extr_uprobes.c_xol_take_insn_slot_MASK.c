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
struct xol_area {int vaddr; int /*<<< orphan*/  slot_count; int /*<<< orphan*/  wq; int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 int UINSNS_PER_PAGE ; 
 int UPROBE_XOL_SLOT_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned long FUNC5(struct xol_area *area)
{
	unsigned long slot_addr;
	int slot_nr;

	do {
		slot_nr = FUNC2(area->bitmap, UINSNS_PER_PAGE);
		if (slot_nr < UINSNS_PER_PAGE) {
			if (!FUNC3(slot_nr, area->bitmap))
				break;

			slot_nr = UINSNS_PER_PAGE;
			continue;
		}
		FUNC4(area->wq, (FUNC1(&area->slot_count) < UINSNS_PER_PAGE));
	} while (slot_nr >= UINSNS_PER_PAGE);

	slot_addr = area->vaddr + (slot_nr * UPROBE_XOL_SLOT_BYTES);
	FUNC0(&area->slot_count);

	return slot_addr;
}