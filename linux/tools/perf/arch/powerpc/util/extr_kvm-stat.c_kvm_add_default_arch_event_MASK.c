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
struct option {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct option const FUNC0 (char,char*,int*,int /*<<< orphan*/ *) ; 
 struct option const FUNC1 () ; 
 int /*<<< orphan*/  PARSE_OPT_KEEP_UNKNOWN ; 
 char** FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char const**) ; 
 int /*<<< orphan*/  FUNC4 (int,char const**,struct option const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 char* FUNC6 (char*) ; 

int FUNC7(int *argc, const char **argv)
{
	const char **tmp;
	bool event = false;
	int i, j = *argc;

	const struct option event_options[] = {
		FUNC0('e', "event", &event, NULL),
		FUNC1()
	};

	tmp = FUNC2(j + 1, sizeof(char *));
	if (!tmp)
		return -EINVAL;

	for (i = 0; i < j; i++)
		tmp[i] = argv[i];

	FUNC4(j, tmp, event_options, NULL, PARSE_OPT_KEEP_UNKNOWN);
	if (!event) {
		if (FUNC5("trace_imc", "trace_cycles")) {
			argv[j++] = FUNC6("-e");
			argv[j++] = FUNC6("trace_imc/trace_cycles/");
			*argc += 2;
		} else {
			FUNC3(tmp);
			return -EINVAL;
		}
	}

	FUNC3(tmp);
	return 0;
}