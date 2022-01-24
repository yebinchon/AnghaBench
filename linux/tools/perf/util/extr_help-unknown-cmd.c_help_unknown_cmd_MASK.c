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
struct cmdnames {int cnt; TYPE_1__** names; } ;
typedef  int /*<<< orphan*/  main_cmds ;
struct TYPE_2__ {unsigned int len; char* name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cmdnames*,struct cmdnames*) ; 
 int autocorrect ; 
 int /*<<< orphan*/  FUNC1 (struct cmdnames*) ; 
 int /*<<< orphan*/  cmdname_compare ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned int FUNC4 (char const*,char*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  levenshtein_compare ; 
 int /*<<< orphan*/  FUNC5 (char*,struct cmdnames*,struct cmdnames*) ; 
 int /*<<< orphan*/  FUNC6 (struct cmdnames*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  perf_unknown_cmd_config ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__**,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (struct cmdnames*) ; 

const char *FUNC11(const char *cmd)
{
	unsigned int i, n = 0, best_similarity = 0;
	struct cmdnames main_cmds, other_cmds;

	FUNC6(&main_cmds, 0, sizeof(main_cmds));
	FUNC6(&other_cmds, 0, sizeof(main_cmds));

	FUNC7(perf_unknown_cmd_config, NULL);

	FUNC5("perf-", &main_cmds, &other_cmds);

	if (FUNC0(&main_cmds, &other_cmds) < 0) {
		FUNC3(stderr, "ERROR: Failed to allocate command list for unknown command.\n");
		goto end;
	}
	FUNC9(main_cmds.names, main_cmds.cnt,
	      sizeof(main_cmds.names), cmdname_compare);
	FUNC10(&main_cmds);

	if (main_cmds.cnt) {
		/* This reuses cmdname->len for similarity index */
		for (i = 0; i < main_cmds.cnt; ++i)
			main_cmds.names[i]->len =
				FUNC4(cmd, main_cmds.names[i]->name, 0, 2, 1, 4);

		FUNC9(main_cmds.names, main_cmds.cnt,
		      sizeof(*main_cmds.names), levenshtein_compare);

		best_similarity = main_cmds.names[0]->len;
		n = 1;
		while (n < main_cmds.cnt && best_similarity == main_cmds.names[n]->len)
			++n;
	}

	if (autocorrect && n == 1) {
		const char *assumed = main_cmds.names[0]->name;

		main_cmds.names[0] = NULL;
		FUNC1(&main_cmds);
		FUNC3(stderr, "WARNING: You called a perf program named '%s', "
			"which does not exist.\n"
			"Continuing under the assumption that you meant '%s'\n",
			cmd, assumed);
		if (autocorrect > 0) {
			FUNC3(stderr, "in %0.1f seconds automatically...\n",
				(float)autocorrect/10.0);
			FUNC8(NULL, 0, autocorrect * 100);
		}
		return assumed;
	}

	FUNC3(stderr, "perf: '%s' is not a perf-command. See 'perf --help'.\n", cmd);

	if (main_cmds.cnt && best_similarity < 6) {
		FUNC3(stderr, "\nDid you mean %s?\n",
			n < 2 ? "this": "one of these");

		for (i = 0; i < n; i++)
			FUNC3(stderr, "\t%s\n", main_cmds.names[i]->name);
	}
end:
	FUNC2(1);
}