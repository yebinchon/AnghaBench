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
 int /*<<< orphan*/  AE_BAD_HEADER ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 scalar_t__ FUNC1 (struct acpi_table_header*) ; 
 struct acpi_table_header* FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_table_header*,struct acpi_table_header*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct acpi_table_header**) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_table_header*) ; 

acpi_status
FUNC7(acpi_physical_address address,
			     struct acpi_table_header **table)
{
	u32 table_length;
	struct acpi_table_header *mapped_table;
	struct acpi_table_header *local_table = NULL;
	acpi_status status = AE_OK;

	/* Get main ACPI tables from memory on first invocation of this function */

	status = FUNC5();
	if (FUNC0(status)) {
		return (status);
	}

	/* Map the table and validate it */

	status = FUNC4(address, NULL, &mapped_table);
	if (FUNC0(status)) {
		return (status);
	}

	/* Copy table to local buffer and return it */

	table_length = FUNC1(mapped_table);
	if (table_length == 0) {
		status = AE_BAD_HEADER;
		goto exit;
	}

	local_table = FUNC2(1, table_length);
	if (!local_table) {
		status = AE_NO_MEMORY;
		goto exit;
	}

	FUNC3(local_table, mapped_table, table_length);

exit:
	FUNC6(mapped_table);
	*table = local_table;
	return (status);
}