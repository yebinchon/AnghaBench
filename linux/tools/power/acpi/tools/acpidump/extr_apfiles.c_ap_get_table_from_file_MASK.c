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
struct acpi_table_header {int dummy; } ;
typedef  int acpi_size ;
typedef  int /*<<< orphan*/  ACPI_FILE ;

/* Variables and functions */
 struct acpi_table_header* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_table_header*) ; 
 int ACPI_UINT32_MAX ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (struct acpi_table_header*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

struct acpi_table_header *FUNC7(char *pathname,
						 u32 *out_file_size)
{
	struct acpi_table_header *buffer = NULL;
	ACPI_FILE file;
	u32 file_size;
	acpi_size actual;

	/* Must use binary mode */

	file = FUNC4(pathname, "rb");
	if (!file) {
		FUNC5(stderr, "Could not open input file: %s\n", pathname);
		return (NULL);
	}

	/* Need file size to allocate a buffer */

	file_size = FUNC2(file);
	if (file_size == ACPI_UINT32_MAX) {
		FUNC5(stderr,
			"Could not get input file size: %s\n", pathname);
		goto cleanup;
	}

	/* Allocate a buffer for the entire file */

	buffer = FUNC0(file_size);
	if (!buffer) {
		FUNC5(stderr,
			"Could not allocate file buffer of size: %u\n",
			file_size);
		goto cleanup;
	}

	/* Read the entire file */

	actual = FUNC6(buffer, 1, file_size, file);
	if (actual != file_size) {
		FUNC5(stderr, "Could not read input file: %s\n", pathname);
		FUNC1(buffer);
		buffer = NULL;
		goto cleanup;
	}

	*out_file_size = file_size;

cleanup:
	FUNC3(file);
	return (buffer);
}