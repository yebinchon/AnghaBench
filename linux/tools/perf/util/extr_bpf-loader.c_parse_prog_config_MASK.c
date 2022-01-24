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
 int BPF_LOADER_ERRNO__CONFIG ; 
 scalar_t__ FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (char const*,struct perf_probe_event*) ; 
 char* FUNC3 (char const*,struct perf_probe_event*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 char* FUNC5 (char const*,char) ; 

__attribute__((used)) static int
FUNC6(const char *config_str, const char **p_main_str,
		  bool *is_tp, struct perf_probe_event *pev)
{
	int err;
	const char *main_str = FUNC3(config_str, pev);

	if (FUNC0(main_str))
		return FUNC1(main_str);

	*p_main_str = main_str;
	if (!FUNC5(main_str, '=')) {
		/* Is a tracepoint event? */
		const char *s = FUNC5(main_str, ':');

		if (!s) {
			FUNC4("bpf: '%s' is not a valid tracepoint\n",
				 config_str);
			return -BPF_LOADER_ERRNO__CONFIG;
		}

		*is_tp = true;
		return 0;
	}

	*is_tp = false;
	err = FUNC2(main_str, pev);
	if (err < 0) {
		FUNC4("bpf: '%s' is not a valid config string\n",
			 config_str);
		/* parse failed, don't need clear pev. */
		return -BPF_LOADER_ERRNO__CONFIG;
	}
	return 0;
}