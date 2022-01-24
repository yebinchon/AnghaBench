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
struct option {scalar_t__ type; char const short_name; char* long_name; } ;

/* Variables and functions */
 scalar_t__ OPTION_END ; 
 int PARSE_OPT_HELP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct option const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC3 (char*,char const*) ; 

int FUNC4(const char * const *usagestr,
			const struct option *opts,
			const char *optstr, bool short_opt)
{
	if (!usagestr)
		goto opt;

	FUNC0(stderr, "\n Usage: %s\n", *usagestr++);
	while (*usagestr && **usagestr)
		FUNC0(stderr, "    or: %s\n", *usagestr++);
	while (*usagestr) {
		FUNC0(stderr, "%s%s\n",
				**usagestr ? "    " : "",
				*usagestr);
		usagestr++;
	}
	FUNC1('\n', stderr);

opt:
	for (  ; opts->type != OPTION_END; opts++) {
		if (short_opt) {
			if (opts->short_name == *optstr) {
				FUNC2(opts, 0);
				break;
			}
			continue;
		}

		if (opts->long_name == NULL)
			continue;

		if (FUNC3(opts->long_name, optstr))
			FUNC2(opts, 0);
		if (FUNC3("no-", optstr) &&
		    FUNC3(opts->long_name, optstr + 3))
			FUNC2(opts, 0);
	}

	return PARSE_OPT_HELP;
}