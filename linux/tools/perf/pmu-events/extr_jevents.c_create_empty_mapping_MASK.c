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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prog ; 

__attribute__((used)) static void FUNC8(const char *output_file)
{
	FILE *outfp;

	FUNC5("%s: Creating empty pmu_events_map[] table\n", prog);

	/* Truncate file to clear any partial writes to it */
	outfp = FUNC2(output_file, "w");
	if (!outfp) {
		FUNC4("fopen()");
		FUNC0(1);
	}

	FUNC3(outfp, "#include \"pmu-events/pmu-events.h\"\n");
	FUNC6(outfp);
	FUNC7(outfp);
	FUNC1(outfp);
}