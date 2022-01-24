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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CONFIG_ACPI_NFIT ; 
 int /*<<< orphan*/  CONFIG_BLK_DEV_PMEM ; 
 int /*<<< orphan*/  CONFIG_DEV_DAX ; 
 int /*<<< orphan*/  CONFIG_DEV_DAX_PMEM ; 
 int /*<<< orphan*/  CONFIG_LIBNVDIMM ; 
 int /*<<< orphan*/  CONFIG_ND_BLK ; 
 int /*<<< orphan*/  CONFIG_ND_BTT ; 
 int /*<<< orphan*/  CONFIG_ND_PFN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	/*
	 * These kconfig symbols must be set to "m" for nfit_test to
	 * load and operate.
	 */
	FUNC0(!FUNC1(CONFIG_LIBNVDIMM));
	FUNC0(!FUNC1(CONFIG_BLK_DEV_PMEM));
	FUNC0(!FUNC1(CONFIG_ND_BTT));
	FUNC0(!FUNC1(CONFIG_ND_PFN));
	FUNC0(!FUNC1(CONFIG_ND_BLK));
	FUNC0(!FUNC1(CONFIG_ACPI_NFIT));
	FUNC0(!FUNC1(CONFIG_DEV_DAX));
	FUNC0(!FUNC1(CONFIG_DEV_DAX_PMEM));
}