#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct acpi_table_header {int /*<<< orphan*/  signature; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_physical_address ;
struct TYPE_5__ {int length; } ;
struct TYPE_6__ {TYPE_1__ header; } ;

/* Variables and functions */
 scalar_t__* FUNC0 (int*) ; 
 scalar_t__* FUNC1 (int*) ; 
 int* FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 TYPE_2__* gbl_rsdt ; 
 TYPE_2__* gbl_xsdt ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *,struct acpi_table_header**) ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_table_header*) ; 

__attribute__((used)) static acpi_status FUNC8(void)
{
	struct acpi_table_header *mapped_table = NULL;
	u8 *table_data;
	u8 number_of_tables;
	u8 item_size;
	acpi_physical_address table_address = 0;
	acpi_status status = AE_OK;
	u32 i;

	if (FUNC5()) {
		item_size = sizeof(u64);
		table_data =
		    FUNC2(gbl_xsdt) + sizeof(struct acpi_table_header);
		number_of_tables =
		    (u8)((gbl_xsdt->header.length -
			  sizeof(struct acpi_table_header))
			 / item_size);
	} else {		/* Use RSDT if XSDT is not available */

		item_size = sizeof(u32);
		table_data =
		    FUNC2(gbl_rsdt) + sizeof(struct acpi_table_header);
		number_of_tables =
		    (u8)((gbl_rsdt->header.length -
			  sizeof(struct acpi_table_header))
			 / item_size);
	}

	/* Search RSDT/XSDT for the requested table */

	for (i = 0; i < number_of_tables; ++i, table_data += item_size) {
		if (FUNC5()) {
			table_address =
			    (acpi_physical_address)(*FUNC1(table_data));
		} else {
			table_address =
			    (acpi_physical_address)(*FUNC0(table_data));
		}

		/* Skip NULL entries in RSDT/XSDT */

		if (table_address == 0) {
			continue;
		}

		status = FUNC6(table_address, NULL, &mapped_table);
		if (FUNC3(status)) {
			return (status);
		}

		FUNC4(mapped_table->signature, 0);
		FUNC7(mapped_table);
	}

	return (AE_OK);
}