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
typedef  int /*<<< orphan*/  swp_entry_t ;
struct swap_info_struct {int /*<<< orphan*/ * swap_map; } ;
typedef  size_t pgoff_t ;

/* Variables and functions */
 struct swap_info_struct* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct swap_info_struct*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(swp_entry_t entry)
{
	struct swap_info_struct *si;
	pgoff_t offset = FUNC3(entry);
	int count = 0;

	si = FUNC0(entry);
	if (si) {
		count = FUNC2(si->swap_map[offset]);
		FUNC1(si);
	}
	return count;
}