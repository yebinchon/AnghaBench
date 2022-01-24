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
typedef  int /*<<< orphan*/  instance_str ;
typedef  int acpi_size ;
typedef  int /*<<< orphan*/  ACPI_FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int ACPI_NAMESEG_SIZE ; 
 char* ACPI_RSDP_NAME ; 
 scalar_t__ FUNC1 (char*) ; 
 char* FILE_SUFFIX_BINARY_TABLE ; 
 int FUNC2 (struct acpi_table_header*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int FUNC6 (struct acpi_table_header*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ gbl_verbose_mode ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (int) ; 

int FUNC10(struct acpi_table_header *table, u32 instance)
{
	char filename[ACPI_NAMESEG_SIZE + 16];
	char instance_str[16];
	ACPI_FILE file;
	acpi_size actual;
	u32 table_length;

	/* Obtain table length */

	table_length = FUNC2(table);

	/* Construct lower-case filename from the table local signature */

	if (FUNC1(table->signature)) {
		FUNC0(filename, ACPI_RSDP_NAME);
	} else {
		FUNC0(filename, table->signature);
	}

	filename[0] = (char)FUNC9((int)filename[0]);
	filename[1] = (char)FUNC9((int)filename[1]);
	filename[2] = (char)FUNC9((int)filename[2]);
	filename[3] = (char)FUNC9((int)filename[3]);
	filename[ACPI_NAMESEG_SIZE] = 0;

	/* Handle multiple SSDts - create different filenames for each */

	if (instance > 0) {
		FUNC7(instance_str, sizeof(instance_str), "%u", instance);
		FUNC8(filename, instance_str);
	}

	FUNC8(filename, FILE_SUFFIX_BINARY_TABLE);

	if (gbl_verbose_mode) {
		FUNC5(stderr,
			"Writing [%4.4s] to binary file: %s 0x%X (%u) bytes\n",
			table->signature, filename, table->length,
			table->length);
	}

	/* Open the file and dump the entire table in binary mode */

	file = FUNC4(filename, "wb");
	if (!file) {
		FUNC5(stderr, "Could not open output file: %s\n", filename);
		return (-1);
	}

	actual = FUNC6(table, 1, table_length, file);
	if (actual != table_length) {
		FUNC5(stderr, "Error writing binary output file: %s\n",
			filename);
		FUNC3(file);
		return (-1);
	}

	FUNC3(file);
	return (0);
}