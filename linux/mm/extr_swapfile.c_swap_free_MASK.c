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
 int /*<<< orphan*/  FUNC0 (struct swap_info_struct*,int /*<<< orphan*/ ,int) ; 
 struct swap_info_struct* FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(swp_entry_t entry)
{
	struct swap_info_struct *p;

	p = FUNC1(entry);
	if (p)
		FUNC0(p, entry, 1);
}