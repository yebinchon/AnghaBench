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
struct option {int type; char* help; int flags; int short_name; char* long_name; char* argh; char* build_opt; } ;

/* Variables and functions */
#define  OPTION_ARGUMENT 142 
#define  OPTION_BIT 141 
#define  OPTION_BOOLEAN 140 
#define  OPTION_CALLBACK 139 
#define  OPTION_END 138 
#define  OPTION_GROUP 137 
#define  OPTION_INCR 136 
#define  OPTION_INTEGER 135 
#define  OPTION_LONG 134 
#define  OPTION_SET_PTR 133 
#define  OPTION_SET_UINT 132 
#define  OPTION_STRING 131 
#define  OPTION_U64 130 
#define  OPTION_UINTEGER 129 
#define  OPTION_ULONG 128 
 int PARSE_OPT_DISABLED ; 
 int PARSE_OPT_HIDDEN ; 
 int PARSE_OPT_NOARG ; 
 int PARSE_OPT_NOBUILD ; 
 int PARSE_OPT_OPTARG ; 
 char* USAGE_GAP ; 
 size_t USAGE_OPTS_WIDTH ; 
 size_t FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC2(const struct option *opts, int full)
{
	size_t pos;
	int pad;

	if (opts->type == OPTION_GROUP) {
		FUNC1('\n', stderr);
		if (*opts->help)
			FUNC0(stderr, "%s\n", opts->help);
		return;
	}
	if (!full && (opts->flags & PARSE_OPT_HIDDEN))
		return;
	if (opts->flags & PARSE_OPT_DISABLED)
		return;

	pos = FUNC0(stderr, "    ");
	if (opts->short_name)
		pos += FUNC0(stderr, "-%c", opts->short_name);
	else
		pos += FUNC0(stderr, "    ");

	if (opts->long_name && opts->short_name)
		pos += FUNC0(stderr, ", ");
	if (opts->long_name)
		pos += FUNC0(stderr, "--%s", opts->long_name);

	switch (opts->type) {
	case OPTION_ARGUMENT:
		break;
	case OPTION_LONG:
	case OPTION_ULONG:
	case OPTION_U64:
	case OPTION_INTEGER:
	case OPTION_UINTEGER:
		if (opts->flags & PARSE_OPT_OPTARG)
			if (opts->long_name)
				pos += FUNC0(stderr, "[=<n>]");
			else
				pos += FUNC0(stderr, "[<n>]");
		else
			pos += FUNC0(stderr, " <n>");
		break;
	case OPTION_CALLBACK:
		if (opts->flags & PARSE_OPT_NOARG)
			break;
		/* FALLTHROUGH */
	case OPTION_STRING:
		if (opts->argh) {
			if (opts->flags & PARSE_OPT_OPTARG)
				if (opts->long_name)
					pos += FUNC0(stderr, "[=<%s>]", opts->argh);
				else
					pos += FUNC0(stderr, "[<%s>]", opts->argh);
			else
				pos += FUNC0(stderr, " <%s>", opts->argh);
		} else {
			if (opts->flags & PARSE_OPT_OPTARG)
				if (opts->long_name)
					pos += FUNC0(stderr, "[=...]");
				else
					pos += FUNC0(stderr, "[...]");
			else
				pos += FUNC0(stderr, " ...");
		}
		break;
	default: /* OPTION_{BIT,BOOLEAN,SET_UINT,SET_PTR} */
	case OPTION_END:
	case OPTION_GROUP:
	case OPTION_BIT:
	case OPTION_BOOLEAN:
	case OPTION_INCR:
	case OPTION_SET_UINT:
	case OPTION_SET_PTR:
		break;
	}

	if (pos <= USAGE_OPTS_WIDTH)
		pad = USAGE_OPTS_WIDTH - pos;
	else {
		FUNC1('\n', stderr);
		pad = USAGE_OPTS_WIDTH;
	}
	FUNC0(stderr, "%*s%s\n", pad + USAGE_GAP, "", opts->help);
	if (opts->flags & PARSE_OPT_NOBUILD)
		FUNC0(stderr, "%*s(not built-in because %s)\n",
			USAGE_OPTS_WIDTH + USAGE_GAP, "",
			opts->build_opt);
}