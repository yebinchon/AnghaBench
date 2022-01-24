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
struct rlimit {int member_0; int /*<<< orphan*/  member_1; } ;
typedef  int /*<<< orphan*/  filename ;

/* Variables and functions */
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 int /*<<< orphan*/  RLIM_INFINITY ; 
 char* bpf_log_buf ; 
 char** color ; 
 int full_range ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/ * map_fd ; 
 char* nocolor ; 
 int num_colors ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 char** sym ; 
 int text_only ; 

int FUNC9(int ac, char **argv)
{
	struct rlimit r = {1024*1024, RLIM_INFINITY};
	char filename[256];
	int i;

	FUNC7(filename, sizeof(filename), "%s_kern.o", argv[0]);

	if (FUNC5(RLIMIT_MEMLOCK, &r)) {
		FUNC1("setrlimit(RLIMIT_MEMLOCK)");
		return 1;
	}

	if (FUNC0(filename)) {
		FUNC4("%s", bpf_log_buf);
		return 1;
	}

	for (i = 1; i < ac; i++) {
		if (FUNC8(argv[i], "-a") == 0) {
			full_range = true;
		} else if (FUNC8(argv[i], "-t") == 0) {
			text_only = true;
		} else if (FUNC8(argv[i], "-h") == 0) {
			FUNC4("Usage:\n"
			       "  -a display wider latency range\n"
			       "  -t text only\n");
			return 1;
		}
	}

	FUNC4("  heatmap of IO latency\n");
	if (text_only)
		FUNC4("  %s", sym[num_colors - 1]);
	else
		FUNC4("  %s %s", color[num_colors - 1], nocolor);
	FUNC4(" - many events with this latency\n");

	if (text_only)
		FUNC4("  %s", sym[0]);
	else
		FUNC4("  %s %s", color[0], nocolor);
	FUNC4(" - few events\n");

	for (i = 0; ; i++) {
		if (i % 20 == 0)
			FUNC2();
		FUNC3(map_fd[1]);
		FUNC6(2);
	}

	return 0;
}