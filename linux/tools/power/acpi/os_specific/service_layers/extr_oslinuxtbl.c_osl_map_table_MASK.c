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
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_size ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  AE_BAD_ADDRESS ; 
 int /*<<< orphan*/  AE_BAD_HEADER ; 
 int /*<<< orphan*/  AE_BAD_SIGNATURE ; 
 int /*<<< orphan*/  AE_INVALID_TABLE_LENGTH ; 
 int /*<<< orphan*/  AE_OK ; 
 struct acpi_table_header* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_table_header*,int) ; 
 int FUNC5 (struct acpi_table_header*) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_table_header*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static acpi_status
FUNC9(acpi_size address,
	      char *signature, struct acpi_table_header **table)
{
	struct acpi_table_header *mapped_table;
	u32 length;

	if (!address) {
		return (AE_BAD_ADDRESS);
	}

	/*
	 * Map the header so we can get the table length.
	 * Use sizeof (struct acpi_table_header) as:
	 * 1. it is bigger than 24 to include RSDP->Length
	 * 2. it is smaller than sizeof (struct acpi_table_rsdp)
	 */
	mapped_table =
	    FUNC3(address, sizeof(struct acpi_table_header));
	if (!mapped_table) {
		FUNC7(stderr, "Could not map table header at 0x%8.8X%8.8X\n",
			FUNC1(address));
		return (FUNC8(AE_BAD_ADDRESS));
	}

	/* If specified, signature must match */

	if (signature) {
		if (FUNC2(signature)) {
			if (!FUNC2(mapped_table->signature)) {
				FUNC4(mapped_table,
						     sizeof(struct
							    acpi_table_header));
				return (AE_BAD_SIGNATURE);
			}
		} else
		    if (!FUNC0
			(signature, mapped_table->signature)) {
			FUNC4(mapped_table,
					     sizeof(struct acpi_table_header));
			return (AE_BAD_SIGNATURE);
		}
	}

	/* Map the entire table */

	length = FUNC5(mapped_table);
	FUNC4(mapped_table, sizeof(struct acpi_table_header));
	if (length == 0) {
		return (AE_BAD_HEADER);
	}

	mapped_table = FUNC3(address, length);
	if (!mapped_table) {
		FUNC7(stderr,
			"Could not map table at 0x%8.8X%8.8X length %8.8X\n",
			FUNC1(address), length);
		return (FUNC8(AE_INVALID_TABLE_LENGTH));
	}

	(void)FUNC6(mapped_table);

	*table = mapped_table;
	return (AE_OK);
}