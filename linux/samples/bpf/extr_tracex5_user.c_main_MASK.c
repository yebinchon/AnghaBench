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
struct rlimit {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 int /*<<< orphan*/  RLIM_INFINITY ; 
 char* bpf_log_buf ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*) ; 

int FUNC7(int ac, char **argv)
{
	FILE *f;
	char filename[256];
	struct rlimit r = {RLIM_INFINITY, RLIM_INFINITY};

	FUNC6(filename, sizeof(filename), "%s_kern.o", argv[0]);
	FUNC5(RLIMIT_MEMLOCK, &r);

	if (FUNC1(filename)) {
		FUNC3("%s", bpf_log_buf);
		return 1;
	}

	FUNC0();

	f = FUNC2("dd if=/dev/zero of=/dev/null count=5", "r");
	(void) f;

	FUNC4();

	return 0;
}