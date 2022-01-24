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
typedef  scalar_t__ u64 ;
struct acpi_table_header {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_physical_address ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_table_header*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct acpi_table_header**) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__*) ; 
 int FUNC6 (struct acpi_table_header*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC8(char *ascii_address)
{
	acpi_physical_address address;
	struct acpi_table_header *table;
	acpi_status status;
	int table_status;
	u64 long_address;

	/* Convert argument to an integer physical address */

	status = FUNC5(ascii_address, &long_address);
	if (FUNC0(status)) {
		FUNC7(stderr, "%s: Could not convert to a physical address\n",
			ascii_address);
		return (-1);
	}

	address = (acpi_physical_address)long_address;
	status = FUNC4(address, &table);
	if (FUNC0(status)) {
		FUNC7(stderr, "Could not get table at 0x%8.8X%8.8s, %s\n",
			FUNC1(address),
			FUNC3(status));
		return (-1);
	}

	table_status = FUNC6(table, 0, address);
	FUNC2(table);
	return (table_status);
}