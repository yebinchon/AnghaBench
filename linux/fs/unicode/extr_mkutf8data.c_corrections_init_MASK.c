#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct unicode_data {int dummy; } ;
struct TYPE_4__ {unsigned int code; unsigned int correction; unsigned int* utf32nfdi; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  LINESIZE ; 
 unsigned int FUNC0 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char* buf0 ; 
 char* buf1 ; 
 TYPE_1__* FUNC3 (int,int) ; 
 TYPE_1__* corrections ; 
 int corrections_count ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  line ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 unsigned int* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int*,unsigned int*,int) ; 
 char* norm_name ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ,char*,unsigned int*,char*,char*,unsigned int*,unsigned int*,unsigned int*) ; 
 unsigned int FUNC15 (char*,char**,int) ; 
 TYPE_1__* unicode_data ; 
 int /*<<< orphan*/  FUNC16 (unsigned int) ; 
 int verbose ; 

__attribute__((used)) static void FUNC17(void)
{
	FILE *file;
	unsigned int unichar;
	unsigned int major;
	unsigned int minor;
	unsigned int revision;
	unsigned int age;
	unsigned int *um;
	unsigned int mapping[19]; /* Magic - guaranteed not to be exceeded. */
	char *s;
	int i;
	int count;
	int ret;

	if (verbose > 0)
		FUNC12("Parsing %s\n", norm_name);
	file = FUNC7(norm_name, "r");
	if (!file)
		FUNC11(norm_name, errno);

	count = 0;
	while (FUNC5(line, LINESIZE, file)) {
		ret = FUNC14(line, "%X;%[^;];%[^;];%d.%d.%d #",
				&unichar, buf0, buf1,
				&major, &minor, &revision);
		if (ret != 6)
			continue;
		if (!FUNC16(unichar) || !FUNC1(major, minor, revision))
			FUNC8(norm_name, line);
		count++;
	}
	corrections = FUNC3(count, sizeof(struct unicode_data));
	corrections_count = count;
	FUNC13(file);

	count = 0;
	while (FUNC5(line, LINESIZE, file)) {
		ret = FUNC14(line, "%X;%[^;];%[^;];%d.%d.%d #",
				&unichar, buf0, buf1,
				&major, &minor, &revision);
		if (ret != 6)
			continue;
		if (!FUNC16(unichar) || !FUNC1(major, minor, revision))
			FUNC8(norm_name, line);
		corrections[count] = unicode_data[unichar];
		FUNC2(corrections[count].code == unichar);
		age = FUNC0(major, minor, revision);
		corrections[count].correction = age;

		i = 0;
		s = buf0;
		while (*s) {
			mapping[i] = FUNC15(s, &s, 16);
			if (!FUNC16(mapping[i]))
				FUNC8(norm_name, line);
			i++;
		}
		mapping[i++] = 0;

		um = FUNC9(i * sizeof(unsigned int));
		FUNC10(um, mapping, i * sizeof(unsigned int));
		corrections[count].utf32nfdi = um;

		if (verbose > 1)
			FUNC12(" %X -> %s -> %s V%d_%d_%d\n",
				unichar, buf0, buf1, major, minor, revision);
		count++;
	}
	FUNC4(file);

	if (verbose > 0)
	        FUNC12("Found %d entries\n", count);
	if (count == 0)
		FUNC6(norm_name);
}