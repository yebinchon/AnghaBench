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
struct swap_info_struct {int dummy; } ;

/* Variables and functions */
 unsigned char SWAP_HAS_CACHE ; 
 int TTRS_FULL ; 
 int TTRS_UNMAPPED ; 
 unsigned char FUNC0 (struct swap_info_struct*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct swap_info_struct*,int /*<<< orphan*/ ,int) ; 
 struct swap_info_struct* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct swap_info_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(swp_entry_t entry)
{
	struct swap_info_struct *p;
	unsigned char count;

	if (FUNC3(entry))
		return 1;

	p = FUNC2(entry);
	if (p) {
		count = FUNC0(p, entry, 1);
		if (count == SWAP_HAS_CACHE &&
		    !FUNC4(p, entry))
			FUNC1(p, FUNC5(entry),
					      TTRS_UNMAPPED | TTRS_FULL);
	}
	return p != NULL;
}