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
struct perf_hpp_list {int dummy; } ;
struct evlist {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct perf_hpp_list*,char*,struct evlist*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,char*) ; 

__attribute__((used)) static int FUNC6(struct perf_hpp_list *list, char *str,
			   struct evlist *evlist)
{
	char *tmp, *tok;
	int ret = 0;
	int level = 0;
	int next_level = 1;
	bool in_group = false;

	do {
		tok = str;
		tmp = FUNC5(str, "{}, ");
		if (tmp) {
			if (in_group)
				next_level = level;
			else
				next_level = level + 1;

			if (*tmp == '{')
				in_group = true;
			else if (*tmp == '}')
				in_group = false;

			*tmp = '\0';
			str = tmp + 1;
		}

		if (*tok) {
			ret = FUNC2(list, tok, evlist, level);
			if (ret == -EINVAL) {
				if (!FUNC0() && !FUNC4(tok, "dcacheline", FUNC3(tok)))
					FUNC1("The \"dcacheline\" --sort key needs to know the cacheline size and it couldn't be determined on this system");
				else
					FUNC1("Invalid --sort key: `%s'", tok);
				break;
			} else if (ret == -ESRCH) {
				FUNC1("Unknown --sort key: `%s'", tok);
				break;
			}
		}

		level = next_level;
	} while (tmp);

	return ret;
}