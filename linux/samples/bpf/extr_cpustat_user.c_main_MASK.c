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
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 char* bpf_log_buf ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  int_exit ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/ * map_fd ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*) ; 

int FUNC9(int argc, char **argv)
{
	char filename[256];
	int ret;

	FUNC8(filename, sizeof(filename), "%s_kern.o", argv[0]);

	if (FUNC4(filename)) {
		FUNC5("%s", bpf_log_buf);
		return 1;
	}

	ret = FUNC1();
	if (ret < 0)
		return 1;

	ret = FUNC0();
	if (ret < 0)
		return 1;

	FUNC6(SIGINT, int_exit);
	FUNC6(SIGTERM, int_exit);

	while (1) {
		FUNC3(map_fd[1], map_fd[2]);
		FUNC2();
		FUNC7(5);
	}

	return 0;
}