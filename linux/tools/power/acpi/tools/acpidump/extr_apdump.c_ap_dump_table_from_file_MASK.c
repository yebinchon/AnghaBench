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
typedef  int u32 ;
struct acpi_table_header {char* signature; int length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct acpi_table_header*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct acpi_table_header*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct acpi_table_header* FUNC3 (char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ gbl_verbose_mode ; 
 int /*<<< orphan*/  stderr ; 

int FUNC5(char *pathname)
{
	struct acpi_table_header *table;
	u32 file_size = 0;
	int table_status = -1;

	/* Get the entire ACPI table from the file */

	table = FUNC3(pathname, &file_size);
	if (!table) {
		return (-1);
	}

	if (!FUNC1(table->signature)) {
		FUNC4(stderr,
			"No valid ACPI signature was found in input file %s\n",
			pathname);
	}

	/* File must be at least as long as the table length */

	if (table->length > file_size) {
		FUNC4(stderr,
			"Table length (0x%X) is too large for input file (0x%X) %s\n",
			table->length, file_size, pathname);
		goto exit;
	}

	if (gbl_verbose_mode) {
		FUNC4(stderr,
			"Input file:  %s contains table [%4.4s], 0x%X (%u) bytes\n",
			pathname, table->signature, file_size, file_size);
	}

	table_status = FUNC2(table, 0, 0);

exit:
	FUNC0(table);
	return (table_status);
}