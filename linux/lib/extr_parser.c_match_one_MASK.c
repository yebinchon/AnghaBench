#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* from; char* to; } ;
typedef  TYPE_1__ substring_t ;

/* Variables and functions */
 int MAX_OPT_ARGS ; 
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char*,char**,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,char**,int) ; 
 char* FUNC3 (char const*,char) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 size_t FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC7(char *s, const char *p, substring_t args[])
{
	char *meta;
	int argc = 0;

	if (!p)
		return 1;

	while(1) {
		int len = -1;
		meta = FUNC3(p, '%');
		if (!meta)
			return FUNC4(p, s) == 0;

		if (FUNC6(p, s, meta-p))
			return 0;

		s += meta - p;
		p = meta + 1;

		if (FUNC0(*p))
			len = FUNC2(p, (char **) &p, 10);
		else if (*p == '%') {
			if (*s++ != '%')
				return 0;
			p++;
			continue;
		}

		if (argc >= MAX_OPT_ARGS)
			return 0;

		args[argc].from = s;
		switch (*p++) {
		case 's': {
			size_t str_len = FUNC5(s);

			if (str_len == 0)
				return 0;
			if (len == -1 || len > str_len)
				len = str_len;
			args[argc].to = s + len;
			break;
		}
		case 'd':
			FUNC1(s, &args[argc].to, 0);
			goto num;
		case 'u':
			FUNC2(s, &args[argc].to, 0);
			goto num;
		case 'o':
			FUNC2(s, &args[argc].to, 8);
			goto num;
		case 'x':
			FUNC2(s, &args[argc].to, 16);
		num:
			if (args[argc].to == args[argc].from)
				return 0;
			break;
		default:
			return 0;
		}
		s = args[argc].to;
		argc++;
	}
}