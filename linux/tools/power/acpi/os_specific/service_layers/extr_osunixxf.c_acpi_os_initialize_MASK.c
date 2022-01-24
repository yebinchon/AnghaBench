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
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  acpi_gbl_output_file ; 
 int /*<<< orphan*/  acpi_gbl_print_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  stdout ; 

acpi_status FUNC3(void)
{
	acpi_status status;

	acpi_gbl_output_file = stdout;

	FUNC2();

	status = FUNC1(&acpi_gbl_print_lock);
	if (FUNC0(status)) {
		return (status);
	}

	return (AE_OK);
}