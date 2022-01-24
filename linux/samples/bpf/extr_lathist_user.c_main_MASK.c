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
typedef  int /*<<< orphan*/  filename ;

/* Variables and functions */
 char* bpf_log_buf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/ * map_fd ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*) ; 

int FUNC6(int argc, char **argv)
{
	char filename[256];

	FUNC5(filename, sizeof(filename), "%s_kern.o", argv[0]);

	if (FUNC1(filename)) {
		FUNC3("%s", bpf_log_buf);
		return 1;
	}

	while (1) {
		FUNC0(map_fd[1]);
		FUNC2();
		FUNC4(5);
	}

	return 0;
}