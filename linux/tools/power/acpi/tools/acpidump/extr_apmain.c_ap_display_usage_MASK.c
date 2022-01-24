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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{

	FUNC1("acpidump [options]");

	FUNC0("-b", "Dump tables to binary files");
	FUNC0("-h -?", "This help message");
	FUNC0("-o <File>", "Redirect output to file");
	FUNC0("-r <Address>", "Dump tables from specified RSDP");
	FUNC0("-s", "Print table summaries only");
	FUNC0("-v", "Display version information");
	FUNC0("-vd", "Display build date and time");
	FUNC0("-z", "Verbose mode");

	FUNC2("\nTable Options:\n");

	FUNC0("-a <Address>", "Get table via a physical address");
	FUNC0("-c <on|off>", "Turning on/off customized table dumping");
	FUNC0("-f <BinaryFile>", "Get table via a binary file");
	FUNC0("-n <Signature>", "Get table via a name/signature");
	FUNC0("-x", "Do not use but dump XSDT");
	FUNC0("-x -x", "Do not use or dump XSDT");

	FUNC2("\n"
			"Invocation without parameters dumps all available tables\n"
			"Multiple mixed instances of -a, -f, and -n are supported\n\n");
}