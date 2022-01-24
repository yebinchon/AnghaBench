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
struct parse_opt_ctx_t {char** argv; int /*<<< orphan*/ * opt; } ;
struct option {char const* const long_name; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int /*<<< orphan*/  exec_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPTION_END ; 
#define  PARSE_OPT_DONE 131 
#define  PARSE_OPT_HELP 130 
#define  PARSE_OPT_LIST_OPTS 129 
#define  PARSE_OPT_LIST_SUBCMDS 128 
 int /*<<< orphan*/  FUNC0 (char**,char const* const) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  error_buf ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct parse_opt_ctx_t*) ; 
 int /*<<< orphan*/  FUNC4 (struct parse_opt_ctx_t*,int,char const**,int) ; 
 int FUNC5 (struct parse_opt_ctx_t*,struct option const*,char const**) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const* const) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 TYPE_1__ subcmd_config ; 
 int /*<<< orphan*/  FUNC8 (char const**,struct option const*) ; 

int FUNC9(int argc, const char **argv, const struct option *options,
			const char *const subcommands[], const char *usagestr[], int flags)
{
	struct parse_opt_ctx_t ctx;

	/* build usage string if it's not provided */
	if (subcommands && !usagestr[0]) {
		char *buf = NULL;

		FUNC1(&buf, "%s %s [<options>] {", subcmd_config.exec_name, argv[0]);

		for (int i = 0; subcommands[i]; i++) {
			if (i)
				FUNC0(&buf, "|");
			FUNC0(&buf, subcommands[i]);
		}
		FUNC0(&buf, "}");

		usagestr[0] = buf;
	}

	FUNC4(&ctx, argc, argv, flags);
	switch (FUNC5(&ctx, options, usagestr)) {
	case PARSE_OPT_HELP:
		FUNC2(129);
	case PARSE_OPT_DONE:
		break;
	case PARSE_OPT_LIST_OPTS:
		while (options->type != OPTION_END) {
			if (options->long_name)
				FUNC6("--%s ", options->long_name);
			options++;
		}
		FUNC7('\n');
		FUNC2(130);
	case PARSE_OPT_LIST_SUBCMDS:
		if (subcommands) {
			for (int i = 0; subcommands[i]; i++)
				FUNC6("%s ", subcommands[i]);
		}
		FUNC7('\n');
		FUNC2(130);
	default: /* PARSE_OPT_UNKNOWN */
		if (ctx.argv[0][1] == '-')
			FUNC1(&error_buf, "unknown option `%s'",
				 ctx.argv[0] + 2);
		else
			FUNC1(&error_buf, "unknown switch `%c'", *ctx.opt);
		FUNC8(usagestr, options);
	}

	return FUNC3(&ctx);
}