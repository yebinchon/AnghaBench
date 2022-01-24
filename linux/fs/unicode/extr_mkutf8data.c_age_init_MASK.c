#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int gen; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  LINESIZE ; 
 int MAXGEN ; 
 unsigned int FUNC0 (unsigned int,unsigned int,unsigned int) ; 
 char* age_name ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int,unsigned int) ; 
 unsigned int* ages ; 
 int ages_count ; 
 unsigned int* FUNC2 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  line ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*,unsigned int*,unsigned int*,...) ; 
 TYPE_1__* unicode_data ; 
 unsigned int unicode_maxage ; 
 int /*<<< orphan*/  FUNC12 (unsigned int) ; 
 int verbose ; 

__attribute__((used)) static void FUNC13(void)
{
	FILE *file;
	unsigned int first;
	unsigned int last;
	unsigned int unichar;
	unsigned int major;
	unsigned int minor;
	unsigned int revision;
	int gen;
	int count;
	int ret;

	if (verbose > 0)
		FUNC9("Parsing %s\n", age_name);

	file = FUNC6(age_name, "r");
	if (!file)
		FUNC8(age_name, errno);
	count = 0;

	gen = 0;
	while (FUNC4(line, LINESIZE, file)) {
		ret = FUNC11(line, "# Age=V%d_%d_%d",
				&major, &minor, &revision);
		if (ret == 3) {
			ages_count++;
			if (verbose > 1)
				FUNC9(" Age V%d_%d_%d\n",
					major, minor, revision);
			if (!FUNC1(major, minor, revision))
				FUNC7(age_name, line);
			continue;
		}
		ret = FUNC11(line, "# Age=V%d_%d", &major, &minor);
		if (ret == 2) {
			ages_count++;
			if (verbose > 1)
				FUNC9(" Age V%d_%d\n", major, minor);
			if (!FUNC1(major, minor, 0))
				FUNC7(age_name, line);
			continue;
		}
	}

	/* We must have found something above. */
	if (verbose > 1)
		FUNC9("%d age entries\n", ages_count);
	if (ages_count == 0 || ages_count > MAXGEN)
		FUNC5(age_name);

	/* There is a 0 entry. */
	ages_count++;
	ages = FUNC2(ages_count + 1, sizeof(*ages));
	/* And a guard entry. */
	ages[ages_count] = (unsigned int)-1;

	FUNC10(file);
	count = 0;
	gen = 0;
	while (FUNC4(line, LINESIZE, file)) {
		ret = FUNC11(line, "# Age=V%d_%d_%d",
				&major, &minor, &revision);
		if (ret == 3) {
			ages[++gen] =
				FUNC0(major, minor, revision);
			if (verbose > 1)
				FUNC9(" Age V%d_%d_%d = gen %d\n",
					major, minor, revision, gen);
			if (!FUNC1(major, minor, revision))
				FUNC7(age_name, line);
			continue;
		}
		ret = FUNC11(line, "# Age=V%d_%d", &major, &minor);
		if (ret == 2) {
			ages[++gen] = FUNC0(major, minor, 0);
			if (verbose > 1)
				FUNC9(" Age V%d_%d = %d\n",
					major, minor, gen);
			if (!FUNC1(major, minor, 0))
				FUNC7(age_name, line);
			continue;
		}
		ret = FUNC11(line, "%X..%X ; %d.%d #",
			     &first, &last, &major, &minor);
		if (ret == 4) {
			for (unichar = first; unichar <= last; unichar++)
				unicode_data[unichar].gen = gen;
			count += 1 + last - first;
			if (verbose > 1)
				FUNC9("  %X..%X gen %d\n", first, last, gen);
			if (!FUNC12(first) || !FUNC12(last))
				FUNC7(age_name, line);
			continue;
		}
		ret = FUNC11(line, "%X ; %d.%d #", &unichar, &major, &minor);
		if (ret == 3) {
			unicode_data[unichar].gen = gen;
			count++;
			if (verbose > 1)
				FUNC9("  %X gen %d\n", unichar, gen);
			if (!FUNC12(unichar))
				FUNC7(age_name, line);
			continue;
		}
	}
	unicode_maxage = ages[gen];
	FUNC3(file);

	/* Nix surrogate block */
	if (verbose > 1)
		FUNC9(" Removing surrogate block D800..DFFF\n");
	for (unichar = 0xd800; unichar <= 0xdfff; unichar++)
		unicode_data[unichar].gen = -1;

	if (verbose > 0)
	        FUNC9("Found %d entries\n", count);
	if (count == 0)
		FUNC5(age_name);
}