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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 char* FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prog ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (char*) ; 
 char* FUNC11 (char*,char*,char**) ; 

__attribute__((used)) static int FUNC12(FILE *outfp, char *fpath)
{
	int n = 16384;
	FILE *mapfp;
	char *save = NULL;
	char *line, *p;
	int line_num;
	char *tblname;

	FUNC6("%s: Processing mapfile %s\n", prog, fpath);

	line = FUNC5(n);
	if (!line)
		return -1;

	mapfp = FUNC3(fpath, "r");
	if (!mapfp) {
		FUNC6("%s: Error %s opening %s\n", prog, FUNC9(errno),
				fpath);
		return -1;
	}

	FUNC7(outfp);

	/* Skip first line (header) */
	p = FUNC0(line, n, mapfp);
	if (!p)
		goto out;

	line_num = 1;
	while (1) {
		char *cpuid, *version, *type, *fname;

		line_num++;
		p = FUNC0(line, n, mapfp);
		if (!p)
			break;

		if (line[0] == '#' || line[0] == '\n')
			continue;

		if (line[FUNC10(line)-1] != '\n') {
			/* TODO Deal with lines longer than 16K */
			FUNC6("%s: Mapfile %s: line %d too long, aborting\n",
					prog, fpath, line_num);
			return -1;
		}
		line[FUNC10(line)-1] = '\0';

		cpuid = FUNC2(FUNC11(p, ",", &save));
		version = FUNC11(NULL, ",", &save);
		fname = FUNC11(NULL, ",", &save);
		type = FUNC11(NULL, ",", &save);

		tblname = FUNC1(fname);
		FUNC4(outfp, "{\n");
		FUNC4(outfp, "\t.cpuid = \"%s\",\n", cpuid);
		FUNC4(outfp, "\t.version = \"%s\",\n", version);
		FUNC4(outfp, "\t.type = \"%s\",\n", type);

		/*
		 * CHECK: We can't use the type (eg "core") field in the
		 * table name. For us to do that, we need to somehow tweak
		 * the other caller of file_name_to_table(), process_json()
		 * to determine the type. process_json() file has no way
		 * of knowing these are "core" events unless file name has
		 * core in it. If filename has core in it, we can safely
		 * ignore the type field here also.
		 */
		FUNC4(outfp, "\t.table = %s\n", tblname);
		FUNC4(outfp, "},\n");
	}

out:
	FUNC8(outfp);
	return 0;
}