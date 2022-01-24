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
typedef  scalar_t__ u32 ;
struct acpi_table_header {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_physical_address ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_table_header*) ; 
 int /*<<< orphan*/  AE_LIMIT ; 
 scalar_t__ AP_MAX_ACPI_FILES ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct acpi_table_header**,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct acpi_table_header*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC6(void)
{
	struct acpi_table_header *table;
	u32 instance = 0;
	acpi_physical_address address;
	acpi_status status;
	int table_status;
	u32 i;

	/* Get and dump all available ACPI tables */

	for (i = 0; i < AP_MAX_ACPI_FILES; i++) {
		status =
		    FUNC3(i, &table, &instance, &address);
		if (FUNC0(status)) {

			/* AE_LIMIT means that no more tables are available */

			if (status == AE_LIMIT) {
				return (0);
			} else if (i == 0) {
				FUNC5(stderr,
					"Could not get ACPI tables, %ld\n",
					FUNC2(status));
				return (-1);
			} else {
				FUNC5(stderr,
					"Could not get ACPI table at index %ld, %s\n",
					i, FUNC2(status));
				continue;
			}
		}

		table_status = FUNC4(table, instance, address);
		FUNC1(table);

		if (table_status) {
			break;
		}
	}

	/* Something seriously bad happened if the loop terminates here */

	return (-1);
}