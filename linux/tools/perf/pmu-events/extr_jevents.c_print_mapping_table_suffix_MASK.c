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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC1(FILE *outfp)
{
	/*
	 * Print the terminating, NULL entry.
	 */
	FUNC0(outfp, "{\n");
	FUNC0(outfp, "\t.cpuid = 0,\n");
	FUNC0(outfp, "\t.version = 0,\n");
	FUNC0(outfp, "\t.type = 0,\n");
	FUNC0(outfp, "\t.table = 0,\n");
	FUNC0(outfp, "},\n");

	/* and finally, the closing curly bracket for the struct */
	FUNC0(outfp, "};\n");
}