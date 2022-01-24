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

/* Variables and functions */
 int AMD_FAM14H_STATE_NUM ; 
 int /*<<< orphan*/ * current_count ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_acc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * previous_count ; 

__attribute__((used)) static void FUNC2(void)
{
	int num;
	for (num = 0; num < AMD_FAM14H_STATE_NUM - 1; num++) {
		FUNC0(previous_count[num]);
		FUNC0(current_count[num]);
	}
	FUNC1(pci_acc);
}