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

/* Variables and functions */
 scalar_t__ FUNC0 (char**,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 char* FUNC7 (char const*) ; 
 void* FUNC8 (char const*,char) ; 

__attribute__((used)) static void FUNC9(const char *path, const char *page)
{
	const char *display = FUNC4("DISPLAY");

	if (display && *display) {
		char *man_page;
		const char *filename = "kfmclient";

		/* It's simpler to launch konqueror using kfmclient. */
		if (path) {
			const char *file = FUNC8(path, '/');
			if (file && !FUNC5(file + 1, "konqueror")) {
				char *new = FUNC7(path);
				char *dest = FUNC8(new, '/');

				/* strlen("konqueror") == strlen("kfmclient") */
				FUNC6(dest + 1, "kfmclient");
				path = new;
			}
			if (file)
				filename = file;
		} else
			path = "kfmclient";
		if (FUNC0(&man_page, "man:%s(1)", page) > 0) {
			FUNC2(path, filename, "newTab", man_page, NULL);
			FUNC3(man_page);
		}
		FUNC1(path);
	}
}