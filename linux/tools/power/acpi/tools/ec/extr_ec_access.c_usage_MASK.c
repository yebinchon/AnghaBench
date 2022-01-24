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

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(char progname[], int exit_status)
{
	FUNC2("Usage:\n");
	FUNC2("1) %s -r [-s sleep]\n", FUNC0(progname));
	FUNC2("2) %s -b byte_offset\n", FUNC0(progname));
	FUNC2("3) %s -w byte_offset -v value\n\n", FUNC0(progname));

	FUNC3("\t-r [-s sleep]      : Dump EC registers");
	FUNC3("\t                     If sleep is given, sleep x seconds,");
	FUNC3("\t                     re-read EC registers and show changes");
	FUNC3("\t-b offset          : Read value at byte_offset (in hex)");
	FUNC3("\t-w offset -v value : Write value at byte_offset");
	FUNC3("\t-h                 : Print this help\n\n");
	FUNC3("Offsets and values are in hexadecimal number system.");
	FUNC3("The offset and value must be between 0 and 0xff.");
	FUNC1(exit_status);
}