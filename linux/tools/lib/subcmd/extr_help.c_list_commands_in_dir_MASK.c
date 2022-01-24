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
struct dirent {char const* d_name; } ;
struct cmdnames {int dummy; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmdnames*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char**,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (char const*) ; 
 struct dirent* FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char const*) ; 

__attribute__((used)) static void FUNC11(struct cmdnames *cmds,
					 const char *path,
					 const char *prefix)
{
	int prefix_len;
	DIR *dir = FUNC7(path);
	struct dirent *de;
	char *buf = NULL;

	if (!dir)
		return;
	if (!prefix)
		prefix = "perf-";
	prefix_len = FUNC9(prefix);

	FUNC2(&buf, "%s/", path);

	while ((de = FUNC8(dir)) != NULL) {
		int entlen;

		if (!FUNC10(de->d_name, prefix))
			continue;

		FUNC1(&buf, de->d_name);
		if (!FUNC6(buf))
			continue;

		entlen = FUNC9(de->d_name) - prefix_len;
		if (FUNC5(de->d_name, ".exe"))
			entlen -= 4;

		FUNC0(cmds, de->d_name + prefix_len, entlen);
	}
	FUNC3(dir);
	FUNC4(buf);
}