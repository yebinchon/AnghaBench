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
struct perf_probe_event {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 char const* FUNC0 (int) ; 
 int FUNC1 (char*,char*,struct perf_probe_event*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 char* FUNC5 (char*,char) ; 
 char* FUNC6 (char const*) ; 

__attribute__((used)) static const char *
FUNC7(const char *config_str, struct perf_probe_event *pev)
{
	char *text = FUNC6(config_str);
	char *sep, *line;
	const char *main_str = NULL;
	int err = 0;

	if (!text) {
		FUNC3("Not enough memory: dup config_str failed\n");
		return FUNC0(-ENOMEM);
	}

	line = text;
	while ((sep = FUNC5(line, ';'))) {
		char *equ;

		*sep = '\0';
		equ = FUNC5(line, '=');
		if (!equ) {
			FUNC4("WARNING: invalid config in BPF object: %s\n",
				   line);
			FUNC4("\tShould be 'key=value'.\n");
			goto nextline;
		}
		*equ = '\0';

		err = FUNC1(line, equ + 1, pev);
		if (err)
			break;
nextline:
		line = sep + 1;
	}

	if (!err)
		main_str = config_str + (line - text);
	FUNC2(text);

	return err ? FUNC0(err) : main_str;
}