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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 

void FUNC2(void)
{
	FUNC1(stderr, "%s [options] [scope][field value]\n", progname);
	FUNC1(stderr, "scope: --cpu cpu-list [--hwp-use-pkg #] | --pkg pkg-list\n");
	FUNC1(stderr, "field: --all | --epb | --hwp-epp | --hwp-min | --hwp-max | --hwp-desired\n");
	FUNC1(stderr, "other: --hwp-enable | --turbo-enable (0 | 1) | --help | --force\n");
	FUNC1(stderr,
		"value: ( # | \"normal\" | \"performance\" | \"balance-performance\" | \"balance-power\"| \"power\")\n");
	FUNC1(stderr, "--hwp-window usec\n");

	FUNC1(stderr, "Specify only Energy Performance BIAS (legacy usage):\n");
	FUNC1(stderr, "%s: [-c cpu] [-v] (-r | policy-value )\n", progname);

	FUNC0(1);
}