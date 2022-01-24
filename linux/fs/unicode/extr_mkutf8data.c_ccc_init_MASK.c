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
struct TYPE_2__ {unsigned int ccc; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  LINESIZE ; 
 char* ccc_name ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  line ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,unsigned int*,unsigned int*,...) ; 
 TYPE_1__* unicode_data ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 int verbose ; 

__attribute__((used)) static void FUNC9(void)
{
	FILE *file;
	unsigned int first;
	unsigned int last;
	unsigned int unichar;
	unsigned int value;
	int count;
	int ret;

	if (verbose > 0)
		FUNC6("Parsing %s\n", ccc_name);

	file = FUNC3(ccc_name, "r");
	if (!file)
		FUNC5(ccc_name, errno);

	count = 0;
	while (FUNC1(line, LINESIZE, file)) {
		ret = FUNC7(line, "%X..%X ; %d #", &first, &last, &value);
		if (ret == 3) {
			for (unichar = first; unichar <= last; unichar++) {
				unicode_data[unichar].ccc = value;
                                count++;
			}
			if (verbose > 1)
				FUNC6(" %X..%X ccc %d\n", first, last, value);
			if (!FUNC8(first) || !FUNC8(last))
				FUNC4(ccc_name, line);
			continue;
		}
		ret = FUNC7(line, "%X ; %d #", &unichar, &value);
		if (ret == 2) {
			unicode_data[unichar].ccc = value;
                        count++;
			if (verbose > 1)
				FUNC6(" %X ccc %d\n", unichar, value);
			if (!FUNC8(unichar))
				FUNC4(ccc_name, line);
			continue;
		}
	}
	FUNC0(file);

	if (verbose > 0)
		FUNC6("Found %d entries\n", count);
	if (count == 0)
		FUNC2(ccc_name);
}