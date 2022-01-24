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
 scalar_t__ FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_table_header*) ; 
 int ACPI_NAMESEG_SIZE ; 
 char* ACPI_SIG_FADT ; 
 char* ACPI_SIG_MADT ; 
 int /*<<< orphan*/  AE_LIMIT ; 
 scalar_t__ AP_MAX_ACPI_FILES ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,struct acpi_table_header**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (struct acpi_table_header*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int FUNC9 (char*) ; 

int FUNC10(char *signature)
{
	char local_signature[ACPI_NAMESEG_SIZE + 1];
	u32 instance;
	struct acpi_table_header *table;
	acpi_physical_address address;
	acpi_status status;
	int table_status;

	if (FUNC9(signature) != ACPI_NAMESEG_SIZE) {
		FUNC7(stderr,
			"Invalid table signature [%s]: must be exactly 4 characters\n",
			signature);
		return (-1);
	}

	/* Table signatures are expected to be uppercase */

	FUNC8(local_signature, signature);
	FUNC5(local_signature);

	/* To be friendly, handle tables whose signatures do not match the name */

	if (FUNC0(local_signature, "FADT")) {
		FUNC8(local_signature, ACPI_SIG_FADT);
	} else if (FUNC0(local_signature, "MADT")) {
		FUNC8(local_signature, ACPI_SIG_MADT);
	}

	/* Dump all instances of this signature (to handle multiple SSDTs) */

	for (instance = 0; instance < AP_MAX_ACPI_FILES; instance++) {
		status = FUNC4(local_signature, instance,
						   &table, &address);
		if (FUNC1(status)) {

			/* AE_LIMIT means that no more tables are available */

			if (status == AE_LIMIT) {
				return (0);
			}

			FUNC7(stderr,
				"Could not get ACPI table with signature [%s], %s\n",
				local_signature, FUNC3(status));
			return (-1);
		}

		table_status = FUNC6(table, instance, address);
		FUNC2(table);

		if (table_status) {
			break;
		}
	}

	/* Something seriously bad happened if the loop terminates here */

	return (-1);
}