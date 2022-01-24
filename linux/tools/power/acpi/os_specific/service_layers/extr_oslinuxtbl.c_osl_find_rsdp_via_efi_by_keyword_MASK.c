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
typedef  int /*<<< orphan*/  acpi_physical_address ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*,char*) ; 
 int FUNC3 (char*,char*,unsigned long long*) ; 

__attribute__((used)) static acpi_physical_address
FUNC4(FILE * file, const char *keyword)
{
	char buffer[80];
	unsigned long long address = 0;
	char format[32];

	FUNC2(format, 32, "%s=%s", keyword, "%llx");
	FUNC1(file, 0, SEEK_SET);
	while (FUNC0(buffer, 80, file)) {
		if (FUNC3(buffer, format, &address) == 1) {
			break;
		}
	}

	return ((acpi_physical_address)(address));
}