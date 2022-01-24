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
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ACPI_NAMESEG_SIZE ; 
 int /*<<< orphan*/  AE_NOT_FOUND ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  REQUEST_FILE_ONLY ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 char* FUNC2 (void*) ; 
 void* FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static acpi_status FUNC7(char *directory)
{
	void *table_dir;
	u32 instance;
	char temp_name[ACPI_NAMESEG_SIZE];
	char *filename;
	acpi_status status = AE_OK;

	/* Open the requested directory */

	table_dir = FUNC3(directory, "*", REQUEST_FILE_ONLY);
	if (!table_dir) {
		return (FUNC5(AE_NOT_FOUND));
	}

	/* Examine all entries in this directory */

	while ((filename = FUNC2(table_dir))) {

		/* Extract table name and instance number */

		status =
		    FUNC6(filename, temp_name, &instance);

		/* Ignore meaningless files */

		if (FUNC0(status)) {
			continue;
		}

		/* Add new info node to global table list */

		status = FUNC4(temp_name, instance);
		if (FUNC0(status)) {
			break;
		}
	}

	FUNC1(table_dir);
	return (status);
}