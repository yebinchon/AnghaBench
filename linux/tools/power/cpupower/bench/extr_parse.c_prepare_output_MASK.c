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
struct utsname {char const* nodename; char const* release; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int) ; 
 scalar_t__ FUNC6 (char const*,int) ; 
 int /*<<< orphan*/ * FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char const*,char const*,...) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct utsname*) ; 

FILE *FUNC14(const char *dirname)
{
	FILE *output = NULL;
	int len;
	char *filename, *filename_tmp;
	struct utsname sysdata;
	DIR *dir;

	dir = FUNC7(dirname);
	if (dir == NULL) {
		if (FUNC6(dirname, 0755)) {
			FUNC8("mkdir");
			FUNC3(stderr, "error: Cannot create dir %s\n",
				dirname);
			return NULL;
		}
	}

	len = FUNC11(dirname) + 30;
	filename = FUNC5(sizeof(char) * len);
	if (!filename) {
		FUNC8("malloc");
		goto out_dir;
	}

	if (FUNC13(&sysdata) == 0) {
		len += FUNC11(sysdata.nodename) + FUNC11(sysdata.release);
		filename_tmp = FUNC9(filename, sizeof(*filename) * len);

		if (filename_tmp == NULL) {
			FUNC4(filename);
			FUNC8("realloc");
			goto out_dir;
		}

		filename = filename_tmp;
		FUNC10(filename, len - 1, "%s/benchmark_%s_%s_%li.log",
			dirname, sysdata.nodename, sysdata.release, FUNC12(NULL));
	} else {
		FUNC10(filename, len - 1, "%s/benchmark_%li.log",
			dirname, FUNC12(NULL));
	}

	FUNC1("logfilename: %s\n", filename);

	output = FUNC2(filename, "w+");
	if (output == NULL) {
		FUNC8("fopen");
		FUNC3(stderr, "error: unable to open logfile\n");
		goto out;
	}

	FUNC3(&stdout, "Logfile: %s\n", filename);

	FUNC3(output, "#round load sleep performance powersave percentage\n");
out:
	FUNC4(filename);
out_dir:
	FUNC0(dir);
	return output;
}