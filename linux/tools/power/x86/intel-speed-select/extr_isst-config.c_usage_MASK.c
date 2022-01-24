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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(void)
{
	FUNC1("Intel(R) Speed Select Technology\n");
	FUNC1("\nUsage:\n");
	FUNC1("intel-speed-select [OPTIONS] FEATURE COMMAND COMMAND_ARGUMENTS\n");
	FUNC1("\nUse this tool to enumerate and control the Intel Speed Select Technology features,\n");
	FUNC1("\nFEATURE : [perf-profile|base-freq|turbo-freq|core-power]\n");
	FUNC1("\nFor help on each feature, use -h|--help\n");
	FUNC1("\tFor example:  intel-speed-select perf-profile -h\n");

	FUNC1("\nFor additional help on each command for a feature, use --h|--help\n");
	FUNC1("\tFor example:  intel-speed-select perf-profile get-lock-status -h\n");
	FUNC1("\t\t This will print help for the command \"get-lock-status\" for the feature \"perf-profile\"\n");

	FUNC1("\nOPTIONS\n");
	FUNC1("\t[-c|--cpu] : logical cpu number\n");
	FUNC1("\t\tDefault: Die scoped for all dies in the system with multiple dies/package\n");
	FUNC1("\t\t\t Or Package scoped for all Packages when each package contains one die\n");
	FUNC1("\t[-d|--debug] : Debug mode\n");
	FUNC1("\t[-h|--help] : Print help\n");
	FUNC1("\t[-i|--info] : Print platform information\n");
	FUNC1("\t[-o|--out] : Output file\n");
	FUNC1("\t\t\tDefault : stderr\n");
	FUNC1("\t[-f|--format] : output format [json|text]. Default: text\n");
	FUNC1("\t[-v|--version] : Print version\n");

	FUNC1("\nResult format\n");
	FUNC1("\tResult display uses a common format for each command:\n");
	FUNC1("\tResults are formatted in text/JSON with\n");
	FUNC1("\t\tPackage, Die, CPU, and command specific results.\n");
	FUNC0(1);
}