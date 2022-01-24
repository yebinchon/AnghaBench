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
typedef  scalar_t__ acpi_physical_address ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int ACPI_NAMESEG_SIZE ; 
 int /*<<< orphan*/  AE_LIMIT ; 
 int /*<<< orphan*/  AE_NOT_FOUND ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  REQUEST_FILE_ONLY ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 char* FUNC3 (void*) ; 
 void* FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct acpi_table_header**) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*,char*,...) ; 

__attribute__((used)) static acpi_status
FUNC9(char *pathname,
			 char *signature,
			 u32 instance,
			 struct acpi_table_header **table,
			 acpi_physical_address *address)
{
	void *table_dir;
	u32 current_instance = 0;
	char temp_name[ACPI_NAMESEG_SIZE];
	char table_filename[PATH_MAX];
	char *filename;
	acpi_status status;

	/* Open the directory for customized tables */

	table_dir = FUNC4(pathname, "*", REQUEST_FILE_ONLY);
	if (!table_dir) {
		return (FUNC5(AE_NOT_FOUND));
	}

	/* Attempt to find the table in the directory */

	while ((filename = FUNC3(table_dir))) {

		/* Ignore meaningless files */

		if (!FUNC0(filename, signature)) {
			continue;
		}

		/* Extract table name and instance number */

		status =
		    FUNC7(filename, temp_name,
					     &current_instance);

		/* Ignore meaningless files */

		if (FUNC1(status) || current_instance != instance) {
			continue;
		}

		/* Create the table pathname */

		if (instance != 0) {
			FUNC8(table_filename, "%s/%4.4s%d", pathname,
				temp_name, instance);
		} else {
			FUNC8(table_filename, "%s/%4.4s", pathname,
				temp_name);
		}
		break;
	}

	FUNC2(table_dir);

	if (!filename) {
		return (AE_LIMIT);
	}

	/* There is no physical address saved for customized tables, use zero */

	*address = 0;
	status = FUNC6(table_filename, 0, NULL, table);

	return (status);
}