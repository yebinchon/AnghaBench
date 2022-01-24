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
struct parse_opt_ctx_t {int flags; char const* opt; char** argv; char** out; TYPE_1__* excl_opt; int /*<<< orphan*/  cpidx; scalar_t__ argc; } ;
struct option {int dummy; } ;
struct TYPE_2__ {char short_name; char* long_name; } ;

/* Variables and functions */
 int PARSE_OPT_DONE ; 
 int PARSE_OPT_HELP ; 
 int PARSE_OPT_KEEP_DASHDASH ; 
 int PARSE_OPT_KEEP_UNKNOWN ; 
 int PARSE_OPT_LIST_OPTS ; 
 int PARSE_OPT_LIST_SUBCMDS ; 
 int PARSE_OPT_NO_INTERNAL_HELP ; 
 int PARSE_OPT_STOP_AT_NON_OPTION ; 
 int PARSE_OPT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (char const*,struct option const*) ; 
 int FUNC1 (struct parse_opt_ctx_t*,char const*,struct option const*) ; 
 int FUNC2 (char const* const*,struct option const*,char const*,int) ; 
 int FUNC3 (struct parse_opt_ctx_t*,struct option const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 char* FUNC5 (char*) ; 
 int FUNC6 (char const* const*,struct option const*,int,struct parse_opt_ctx_t*) ; 

__attribute__((used)) static int FUNC7(struct parse_opt_ctx_t *ctx,
			      const struct option *options,
			      const char * const usagestr[])
{
	int internal_help = !(ctx->flags & PARSE_OPT_NO_INTERNAL_HELP);
	int excl_short_opt = 1;
	const char *arg;

	/* we must reset ->opt, unknown short option leave it dangling */
	ctx->opt = NULL;

	for (; ctx->argc; ctx->argc--, ctx->argv++) {
		arg = ctx->argv[0];
		if (*arg != '-' || !arg[1]) {
			if (ctx->flags & PARSE_OPT_STOP_AT_NON_OPTION)
				break;
			ctx->out[ctx->cpidx++] = ctx->argv[0];
			continue;
		}

		if (arg[1] != '-') {
			ctx->opt = ++arg;
			if (internal_help && *ctx->opt == 'h') {
				return FUNC6(usagestr, options, 0, ctx);
			}
			switch (FUNC3(ctx, options)) {
			case -1:
				return FUNC2(usagestr, options, arg, 1);
			case -2:
				goto unknown;
			case -3:
				goto exclusive;
			default:
				break;
			}
			if (ctx->opt)
				FUNC0(arg, options);
			while (ctx->opt) {
				if (internal_help && *ctx->opt == 'h')
					return FUNC6(usagestr, options, 0, ctx);
				arg = ctx->opt;
				switch (FUNC3(ctx, options)) {
				case -1:
					return FUNC2(usagestr, options, arg, 1);
				case -2:
					/* fake a short option thing to hide the fact that we may have
					 * started to parse aggregated stuff
					 *
					 * This is leaky, too bad.
					 */
					ctx->argv[0] = FUNC5(ctx->opt - 1);
					*(char *)ctx->argv[0] = '-';
					goto unknown;
				case -3:
					goto exclusive;
				default:
					break;
				}
			}
			continue;
		}

		if (!arg[2]) { /* "--" */
			if (!(ctx->flags & PARSE_OPT_KEEP_DASHDASH)) {
				ctx->argc--;
				ctx->argv++;
			}
			break;
		}

		arg += 2;
		if (internal_help && !FUNC4(arg, "help-all"))
			return FUNC6(usagestr, options, 1, ctx);
		if (internal_help && !FUNC4(arg, "help"))
			return FUNC6(usagestr, options, 0, ctx);
		if (!FUNC4(arg, "list-opts"))
			return PARSE_OPT_LIST_OPTS;
		if (!FUNC4(arg, "list-cmds"))
			return PARSE_OPT_LIST_SUBCMDS;
		switch (FUNC1(ctx, arg, options)) {
		case -1:
			return FUNC2(usagestr, options, arg, 0);
		case -2:
			goto unknown;
		case -3:
			excl_short_opt = 0;
			goto exclusive;
		default:
			break;
		}
		continue;
unknown:
		if (!(ctx->flags & PARSE_OPT_KEEP_UNKNOWN))
			return PARSE_OPT_UNKNOWN;
		ctx->out[ctx->cpidx++] = ctx->argv[0];
		ctx->opt = NULL;
	}
	return PARSE_OPT_DONE;

exclusive:
	FUNC2(usagestr, options, arg, excl_short_opt);
	if ((excl_short_opt && ctx->excl_opt->short_name) ||
	    ctx->excl_opt->long_name == NULL) {
		char opt = ctx->excl_opt->short_name;
		FUNC2(NULL, options, &opt, 1);
	} else {
		FUNC2(NULL, options, ctx->excl_opt->long_name, 0);
	}
	return PARSE_OPT_HELP;
}