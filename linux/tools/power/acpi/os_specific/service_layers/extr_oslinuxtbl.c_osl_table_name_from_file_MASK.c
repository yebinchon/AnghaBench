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
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 size_t ACPI_NAMESEG_SIZE ; 
 int /*<<< orphan*/  AE_BAD_SIGNATURE ; 
 int /*<<< orphan*/  AE_OK ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,scalar_t__*) ; 
 size_t FUNC3 (char*) ; 

__attribute__((used)) static acpi_status
FUNC4(char *filename, char *signature, u32 *instance)
{

	/* Ignore meaningless files */

	if (FUNC3(filename) < ACPI_NAMESEG_SIZE) {
		return (AE_BAD_SIGNATURE);
	}

	/* Extract instance number */

	if (FUNC1((int)filename[ACPI_NAMESEG_SIZE])) {
		FUNC2(&filename[ACPI_NAMESEG_SIZE], "%u", instance);
	} else if (FUNC3(filename) != ACPI_NAMESEG_SIZE) {
		return (AE_BAD_SIGNATURE);
	} else {
		*instance = 0;
	}

	/* Extract signature */

	FUNC0(signature, filename);
	return (AE_OK);
}