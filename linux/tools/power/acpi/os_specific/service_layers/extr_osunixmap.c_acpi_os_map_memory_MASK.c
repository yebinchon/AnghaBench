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
typedef  int /*<<< orphan*/  u8 ;
typedef  int acpi_size ;
typedef  int acpi_physical_address ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * MAP_FAILED ; 
 int /*<<< orphan*/  MMAP_FLAGS ; 
 int O_BINARY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 char* SYSTEM_MEMORY ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (char*,int) ; 
 int /*<<< orphan*/  stderr ; 

void *FUNC6(acpi_physical_address where, acpi_size length)
{
	u8 *mapped_memory;
	acpi_physical_address offset;
	acpi_size page_size;
	int fd;

	fd = FUNC5(SYSTEM_MEMORY, O_RDONLY | O_BINARY);
	if (fd < 0) {
		FUNC3(stderr, "Cannot open %s\n", SYSTEM_MEMORY);
		return (NULL);
	}

	/* Align the offset to use mmap */

	page_size = FUNC1();
	offset = where % page_size;

	/* Map the table header to get the length of the full table */

	mapped_memory = FUNC4(NULL, (length + offset), PROT_READ, MMAP_FLAGS,
			     fd, (where - offset));
	if (mapped_memory == MAP_FAILED) {
		FUNC3(stderr, "Cannot map %s\n", SYSTEM_MEMORY);
		FUNC2(fd);
		return (NULL);
	}

	FUNC2(fd);
	return (FUNC0(mapped_memory + offset));
}