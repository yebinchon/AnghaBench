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
struct script_config {char const** names; char** paths; char const* perf; int index; int /*<<< orphan*/  extra_format; } ;
struct TYPE_2__ {int /*<<< orphan*/  attr; } ;
struct evsel {TYPE_1__ core; } ;

/* Variables and functions */
 int K_ENTER ; 
 int SCRIPT_FULLPATH_LEN ; 
 int SCRIPT_MAX_NO ; 
 int SCRIPT_NAMELEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,struct script_config*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (char**,char**,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct script_config*) ; 
 char* FUNC6 (char*,int) ; 
 int /*<<< orphan*/  scripts_config ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int FUNC9 (int,char* const*) ; 
 int FUNC10 (char*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char**) ; 

__attribute__((used)) static int FUNC12(char *script_name, bool *custom,
			struct evsel *evsel)
{
	char *buf, *paths[SCRIPT_MAX_NO], *names[SCRIPT_MAX_NO];
	int i, num, choice;
	int ret = 0;
	int max_std, custom_perf;
	char pbuf[256];
	const char *perf = FUNC6(pbuf, sizeof pbuf);
	struct script_config scriptc = {
		.names = (const char **)names,
		.paths = paths,
		.perf = perf
	};

	script_name[0] = 0;

	/* Preset the script name to SCRIPT_NAMELEN */
	buf = FUNC4(SCRIPT_MAX_NO * (SCRIPT_NAMELEN + SCRIPT_FULLPATH_LEN));
	if (!buf)
		return -1;

	if (evsel)
		FUNC1(scriptc.extra_format, &evsel->core.attr);
	FUNC0("Show individual samples", "", &scriptc);
	FUNC0("Show individual samples with assembler", "-F +insn --xed",
			  &scriptc);
	FUNC0("Show individual samples with source", "-F +srcline,+srccode",
			  &scriptc);
	FUNC5(scripts_config, &scriptc);
	custom_perf = scriptc.index;
	FUNC0("Show samples with custom perf script arguments", "", &scriptc);
	i = scriptc.index;
	max_std = i;

	for (; i < SCRIPT_MAX_NO; i++) {
		names[i] = buf + (i - max_std) * (SCRIPT_NAMELEN + SCRIPT_FULLPATH_LEN);
		paths[i] = names[i] + SCRIPT_NAMELEN;
	}

	num = FUNC2(names + max_std, paths + max_std, SCRIPT_MAX_NO - max_std,
			SCRIPT_FULLPATH_LEN);
	if (num < 0)
		num = 0;
	choice = FUNC9(num + max_std, (char * const *)names);
	if (choice < 0) {
		ret = -1;
		goto out;
	}
	if (choice == custom_perf) {
		char script_args[50];
		int key = FUNC10("perf script command",
				"Enter perf script command line (without perf script prefix)",
				script_args, "", 0);
		if (key != K_ENTER) {
			ret = -1;
			goto out;
		}
		FUNC7(script_name, "%s script %s", perf, script_args);
	} else if (choice < num + max_std) {
		FUNC8(script_name, paths[choice]);
	}
	*custom = choice >= max_std;

out:
	FUNC3(buf);
	for (i = 0; i < max_std; i++)
		FUNC11(&paths[i]);
	return ret;
}