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
typedef  int /*<<< orphan*/  contline ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BATCH_ARG_NB_MAX ; 
 int BATCH_LINE_LEN_MAX ; 
 scalar_t__ E2BIG ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmds ; 
 int /*<<< orphan*/  do_help ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int FUNC12 (char*,char**,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,unsigned int) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 char* FUNC16 (char*,char) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 unsigned int FUNC18 (scalar_t__) ; 
 int FUNC19 (char*) ; 
 char* FUNC20 (char*,char*) ; 

__attribute__((used)) static int FUNC21(int argc, char **argv)
{
	char buf[BATCH_LINE_LEN_MAX], contline[BATCH_LINE_LEN_MAX];
	char *n_argv[BATCH_ARG_NB_MAX];
	unsigned int lines = 0;
	int n_argc;
	FILE *fp;
	char *cp;
	int err;
	int i;

	if (argc < 2) {
		FUNC13("too few parameters for batch");
		return -1;
	} else if (!FUNC5(*argv, "file")) {
		FUNC13("expected 'file', got: %s", *argv);
		return -1;
	} else if (argc > 2) {
		FUNC13("too many parameters for batch");
		return -1;
	}
	FUNC0();

	if (!FUNC17(*argv, "-"))
		fp = stdin;
	else
		fp = FUNC4(*argv, "r");
	if (!fp) {
		FUNC13("Can't open file (%s): %s", *argv, FUNC18(errno));
		return -1;
	}

	if (json_output)
		FUNC9(json_wtr);
	while (FUNC3(buf, sizeof(buf), fp)) {
		cp = FUNC16(buf, '#');
		if (cp)
			*cp = '\0';

		if (FUNC19(buf) == sizeof(buf) - 1) {
			errno = E2BIG;
			break;
		}

		/* Append continuation lines if any (coming after a line ending
		 * with '\' in the batch file).
		 */
		while ((cp = FUNC20(buf, "\\\n")) != NULL) {
			if (!FUNC3(contline, sizeof(contline), fp) ||
			    FUNC19(contline) == 0) {
				FUNC13("missing continuation line on command %d",
				      lines);
				err = -1;
				goto err_close;
			}

			cp = FUNC16(contline, '#');
			if (cp)
				*cp = '\0';

			if (FUNC19(buf) + FUNC19(contline) + 1 > sizeof(buf)) {
				FUNC13("command %d is too long", lines);
				err = -1;
				goto err_close;
			}
			buf[FUNC19(buf) - 2] = '\0';
			FUNC15(buf, contline);
		}

		n_argc = FUNC12(buf, n_argv, BATCH_ARG_NB_MAX, lines);
		if (!n_argc)
			continue;
		if (n_argc < 0)
			goto err_close;

		if (json_output) {
			FUNC10(json_wtr);
			FUNC8(json_wtr, "command");
			FUNC9(json_wtr);
			for (i = 0; i < n_argc; i++)
				FUNC11(json_wtr, n_argv[i]);
			FUNC6(json_wtr);
			FUNC8(json_wtr, "output");
		}

		err = FUNC1(cmds, n_argc, n_argv, do_help);

		if (json_output)
			FUNC7(json_wtr);

		if (err)
			goto err_close;

		lines++;
	}

	if (errno && errno != ENOENT) {
		FUNC13("reading batch file failed: %s", FUNC18(errno));
		err = -1;
	} else {
		if (!json_output)
			FUNC14("processed %d commands\n", lines);
		err = 0;
	}
err_close:
	if (fp != stdin)
		FUNC2(fp);

	if (json_output)
		FUNC6(json_wtr);

	return err;
}