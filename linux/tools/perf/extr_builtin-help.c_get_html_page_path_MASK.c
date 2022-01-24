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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_HTML_PATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char**,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct stat*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(char **page_path, const char *page)
{
	struct stat st;
	const char *html_path = FUNC5(PERF_HTML_PATH);

	/* Check that we have a perf documentation directory. */
	if (FUNC4(FUNC2("%s/perf.html", html_path), &st)
	    || !FUNC0(st.st_mode)) {
		FUNC3("'%s': not a documentation directory.", html_path);
		return -1;
	}

	return FUNC1(page_path, "%s/%s.html", html_path, page);
}