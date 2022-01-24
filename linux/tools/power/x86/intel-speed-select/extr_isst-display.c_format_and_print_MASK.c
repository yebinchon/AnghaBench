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
typedef  int /*<<< orphan*/  delimiters ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int last_level ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (char*,int,char*,char*) ; 

__attribute__((used)) static void FUNC5(FILE *outf, int level, char *header, char *value)
{
	char *spaces = "  ";
	static char delimiters[256];
	int i;

	if (!FUNC3()) {
		FUNC1(outf, level, header, value);
		return;
	}

	if (level == 0) {
		if (header)
			FUNC2(outf, "{");
		else
			FUNC2(outf, "\n}\n");

	} else {
		int j = 0;

		for (i = 0; i < level; ++i)
			j += FUNC4(&delimiters[j], sizeof(delimiters) - j,
				      "%s", spaces);

		if (last_level == level)
			FUNC2(outf, ",\n");

		if (value) {
			if (last_level != level)
				FUNC2(outf, "\n");

			FUNC2(outf, "%s\"%s\": ", delimiters, header);
			FUNC2(outf, "\"%s\"", value);
		} else {
			for (i = last_level - 1; i >= level; --i) {
				int k = 0;

				for (j = i; j > 0; --j)
					k += FUNC4(&delimiters[k],
						      sizeof(delimiters) - k,
						      "%s", spaces);
				if (i == level && header)
					FUNC2(outf, "\n%s},", delimiters);
				else
					FUNC2(outf, "\n%s}", delimiters);
			}
			if (FUNC0(last_level - level) < 3)
				FUNC2(outf, "\n");
			if (header)
				FUNC2(outf, "%s\"%s\": {", delimiters,
					header);
		}
	}

	last_level = level;
}