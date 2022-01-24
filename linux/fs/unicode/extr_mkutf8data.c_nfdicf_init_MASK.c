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
struct TYPE_2__ {unsigned int* utf32nfdicf; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  LINESIZE ; 
 char* buf0 ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* fold_name ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  line ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 unsigned int* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*,unsigned int*,char*,char*) ; 
 unsigned int FUNC11 (char*,char**,int) ; 
 TYPE_1__* unicode_data ; 
 int /*<<< orphan*/  FUNC12 (unsigned int) ; 
 int verbose ; 

__attribute__((used)) static void FUNC13(void)
{
	FILE *file;
	unsigned int unichar;
	unsigned int mapping[19]; /* Magic - guaranteed not to be exceeded. */
	char status;
	char *s;
	unsigned int *um;
	int i;
	int count;
	int ret;

	if (verbose > 0)
		FUNC9("Parsing %s\n", fold_name);
	file = FUNC3(fold_name, "r");
	if (!file)
		FUNC7(fold_name, errno);

	count = 0;
	while (FUNC1(line, LINESIZE, file)) {
		ret = FUNC10(line, "%X; %c; %[^;];", &unichar, &status, buf0);
		if (ret != 3)
			continue;
		if (!FUNC12(unichar))
			FUNC4(fold_name, line);
		/* Use the C+F casefold. */
		if (status != 'C' && status != 'F')
			continue;
		s = buf0;
		if (*s == '<')
			while (*s++ != ' ')
				;
		i = 0;
		while (*s) {
			mapping[i] = FUNC11(s, &s, 16);
			if (!FUNC12(mapping[i]))
				FUNC4(fold_name, line);
			i++;
		}
		mapping[i++] = 0;

		um = FUNC5(i * sizeof(unsigned int));
		FUNC6(um, mapping, i * sizeof(unsigned int));
		unicode_data[unichar].utf32nfdicf = um;

		if (verbose > 1)
			FUNC8(unichar);
		count++;
	}
	FUNC0(file);
	if (verbose > 0)
		FUNC9("Found %d entries\n", count);
	if (count == 0)
		FUNC2(fold_name);
}