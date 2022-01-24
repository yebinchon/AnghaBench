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
typedef  int /*<<< orphan*/  u32 ;
struct acpi_table_header {char* signature; } ;
typedef  int /*<<< orphan*/  acpi_physical_address ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct acpi_table_header*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DB_BYTE_DISPLAY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct acpi_table_header*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_table_header*) ; 
 int FUNC5 (struct acpi_table_header*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ gbl_binary_mode ; 
 int /*<<< orphan*/  gbl_output_file ; 
 scalar_t__ gbl_summary_mode ; 
 int /*<<< orphan*/  u8 ; 

__attribute__((used)) static int
FUNC7(struct acpi_table_header *table,
		     u32 instance, acpi_physical_address address)
{
	u32 table_length;

	table_length = FUNC4(table);

	/* Print only the header if requested */

	if (gbl_summary_mode) {
		FUNC2(address, table);
		return (0);
	}

	/* Dump to binary file if requested */

	if (gbl_binary_mode) {
		return (FUNC5(table, instance));
	}

	/*
	 * Dump the table with header for use with acpixtract utility.
	 * Note: simplest to just always emit a 64-bit address. acpi_xtract
	 * utility can handle this.
	 */
	FUNC6(gbl_output_file, "%4.4s @ 0x%8.8X%8.8X\n",
		table->signature, FUNC1(address));

	FUNC3(gbl_output_file,
				    FUNC0(u8, table), table_length,
				    DB_BYTE_DISPLAY, 0);
	FUNC6(gbl_output_file, "\n");
	return (0);
}