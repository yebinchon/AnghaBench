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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

void FUNC1(FILE *file, char *progname)
{
	FUNC0(file, "usage: %s [-b cmd] [-f file] [-h]\n", progname);
	FUNC0(file, "\nOptions:\n");
	FUNC0(file, "  -b     Specify command to be executed in batch mode\n");
	FUNC0(file, "  -f     Specify interface file other than");
	FUNC0(file, "         /sys/kernel/debug/acpi/acpidbg\n");
	FUNC0(file, "  -h     Print this help message\n");
}