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
struct TYPE_2__ {unsigned int* utf32nfdi; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  LINESIZE ; 
 char* buf0 ; 
 char* data_name ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  line ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 unsigned int* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*,unsigned int*,char*) ; 
 unsigned int FUNC12 (char*,char**,int) ; 
 TYPE_1__* unicode_data ; 
 int /*<<< orphan*/  FUNC13 (unsigned int) ; 
 int verbose ; 

__attribute__((used)) static void FUNC14(void)
{
	FILE *file;
	unsigned int unichar;
	unsigned int mapping[19]; /* Magic - guaranteed not to be exceeded. */
	char *s;
	char *type;
	unsigned int *um;
	int count;
	int i;
	int ret;

	if (verbose > 0)
		FUNC10("Parsing %s\n", data_name);
	file = FUNC3(data_name, "r");
	if (!file)
		FUNC8(data_name, errno);

	count = 0;
	while (FUNC1(line, LINESIZE, file)) {
		ret = FUNC11(line, "%X;%*[^;];%*[^;];%*[^;];%*[^;];%[^;];",
			     &unichar, buf0);
		if (ret != 2)
			continue;
		if (!FUNC13(unichar))
			FUNC5(data_name, line);

		s = buf0;
		/* skip over <tag> */
		if (*s == '<') {
			type = ++s;
			while (*++s != '>');
			*s++ = '\0';
			if(FUNC4(type))
				continue;
		}
		/* decode the decomposition into UTF-32 */
		i = 0;
		while (*s) {
			mapping[i] = FUNC12(s, &s, 16);
			if (!FUNC13(mapping[i]))
				FUNC5(data_name, line);
			i++;
		}
		mapping[i++] = 0;

		um = FUNC6(i * sizeof(unsigned int));
		FUNC7(um, mapping, i * sizeof(unsigned int));
		unicode_data[unichar].utf32nfdi = um;

		if (verbose > 1)
			FUNC9(unichar);
		count++;
	}
	FUNC0(file);
	if (verbose > 0)
		FUNC10("Found %d entries\n", count);
	if (count == 0)
		FUNC2(data_name);
}