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
struct md4_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char,struct md4_ctx*) ; 
 char* FUNC1 (char const*,unsigned long*) ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ FUNC3 (char*,unsigned long) ; 
 scalar_t__ FUNC4 (char*,unsigned long,struct md4_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned long) ; 

__attribute__((used)) static int FUNC6(const char *fname, struct md4_ctx *md)
{
	char *file;
	unsigned long i, len;

	file = FUNC1(fname, &len);
	if (!file)
		return 0;

	for (i = 0; i < len; i++) {
		/* Collapse and ignore \ and CR. */
		if (file[i] == '\\' && (i+1 < len) && file[i+1] == '\n') {
			i++;
			continue;
		}

		/* Ignore whitespace */
		if (FUNC2(file[i]))
			continue;

		/* Handle strings as whole units */
		if (file[i] == '"') {
			i += FUNC4(file+i, len - i, md);
			continue;
		}

		/* Comments: ignore */
		if (file[i] == '/' && file[i+1] == '*') {
			i += FUNC3(file+i, len - i);
			continue;
		}

		FUNC0(file[i], md);
	}
	FUNC5(file, len);
	return 1;
}