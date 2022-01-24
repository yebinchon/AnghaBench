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
struct parse_opt_ctx_t {int argc; } ;
struct option {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ OPTION_END ; 
 scalar_t__ OPTION_GROUP ; 
 int PARSE_OPT_HELP ; 
 char* error_buf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct option*) ; 
 int /*<<< orphan*/  FUNC3 (struct option const*,struct parse_opt_ctx_t*) ; 
 struct option* FUNC4 (struct option const*) ; 
 int /*<<< orphan*/  FUNC5 (struct option const*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (char**) ; 

__attribute__((used)) static int FUNC8(const char * const *usagestr,
				       const struct option *opts, int full,
				       struct parse_opt_ctx_t *ctx)
{
	struct option *ordered;

	if (!usagestr)
		return PARSE_OPT_HELP;

	FUNC6();

	if (error_buf) {
		FUNC0(stderr, "  Error: %s\n", error_buf);
		FUNC7(&error_buf);
	}

	FUNC0(stderr, "\n Usage: %s\n", *usagestr++);
	while (*usagestr && **usagestr)
		FUNC0(stderr, "    or: %s\n", *usagestr++);
	while (*usagestr) {
		FUNC0(stderr, "%s%s\n",
				**usagestr ? "    " : "",
				*usagestr);
		usagestr++;
	}

	if (opts->type != OPTION_GROUP)
		FUNC1('\n', stderr);

	ordered = FUNC4(opts);
	if (ordered)
		opts = ordered;

	for (  ; opts->type != OPTION_END; opts++) {
		if (ctx && ctx->argc > 1 && !FUNC3(opts, ctx))
			continue;
		FUNC5(opts, full);
	}

	FUNC1('\n', stderr);

	FUNC2(ordered);

	return PARSE_OPT_HELP;
}