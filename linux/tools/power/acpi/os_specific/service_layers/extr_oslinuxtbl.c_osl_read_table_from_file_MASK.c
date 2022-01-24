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
struct acpi_table_header {char* signature; } ;
typedef  int s32 ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_size ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  AE_BAD_HEADER ; 
 int /*<<< orphan*/  AE_BAD_SIGNATURE ; 
 int /*<<< orphan*/  AE_INVALID_TABLE_LENGTH ; 
 int /*<<< orphan*/  AE_NOT_FOUND ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC2 (struct acpi_table_header*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_table_header*) ; 
 struct acpi_table_header* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int FUNC8 (struct acpi_table_header*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static acpi_status
FUNC11(char *filename,
			 acpi_size file_offset,
			 char *signature, struct acpi_table_header **table)
{
	FILE *table_file;
	struct acpi_table_header header;
	struct acpi_table_header *local_table = NULL;
	u32 table_length;
	s32 count;
	acpi_status status = AE_OK;

	/* Open the file */

	table_file = FUNC6(filename, "rb");
	if (table_file == NULL) {
		FUNC7(stderr, "Could not open table file: %s\n", filename);
		return (FUNC10(AE_NOT_FOUND));
	}

	FUNC9(table_file, file_offset, SEEK_SET);

	/* Read the Table header to get the table length */

	count = FUNC8(&header, 1, sizeof(struct acpi_table_header), table_file);
	if (count != sizeof(struct acpi_table_header)) {
		FUNC7(stderr, "Could not read table header: %s\n", filename);
		status = AE_BAD_HEADER;
		goto exit;
	}

	/* If signature is specified, it must match the table */

	if (signature) {
		if (FUNC1(signature)) {
			if (!FUNC1(header.signature)) {
				FUNC7(stderr,
					"Incorrect RSDP signature: found %8.8s\n",
					header.signature);
				status = AE_BAD_SIGNATURE;
				goto exit;
			}
		} else if (!FUNC0(signature, header.signature)) {
			FUNC7(stderr,
				"Incorrect signature: Expecting %4.4s, found %4.4s\n",
				signature, header.signature);
			status = AE_BAD_SIGNATURE;
			goto exit;
		}
	}

	table_length = FUNC2(&header);
	if (table_length == 0) {
		status = AE_BAD_HEADER;
		goto exit;
	}

	/* Read the entire table into a local buffer */

	local_table = FUNC4(1, table_length);
	if (!local_table) {
		FUNC7(stderr,
			"%4.4s: Could not allocate buffer for table of length %X\n",
			header.signature, table_length);
		status = AE_NO_MEMORY;
		goto exit;
	}

	FUNC9(table_file, file_offset, SEEK_SET);

	count = FUNC8(local_table, 1, table_length, table_file);
	if (count != table_length) {
		FUNC7(stderr, "%4.4s: Could not read table content\n",
			header.signature);
		status = AE_INVALID_TABLE_LENGTH;
		goto exit;
	}

	/* Validate checksum */

	(void)FUNC3(local_table);

exit:
	FUNC5(table_file);
	*table = local_table;
	return (status);
}