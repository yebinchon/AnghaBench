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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  result ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ ENOENT ; 
 int LINE_MAX ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  USAGE_STR ; 
 int /*<<< orphan*/  W_OK ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (int,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (char*,int,char*,...) ; 
 scalar_t__ FUNC11 (char*) ; 
 int FUNC12 (int,char*,scalar_t__) ; 

int FUNC13(int argc, char **argv)
{
	int efd = -1;
	int cfd = -1;
	int event_control = -1;
	char event_control_path[PATH_MAX];
	char line[LINE_MAX];
	int ret;

	if (argc != 3)
		FUNC4(1, "%s", USAGE_STR);

	cfd = FUNC6(argv[1], O_RDONLY);
	if (cfd == -1)
		FUNC3(1, "Cannot open %s", argv[1]);

	ret = FUNC10(event_control_path, PATH_MAX, "%s/cgroup.event_control",
			FUNC2(argv[1]));
	if (ret >= PATH_MAX)
		FUNC4(1, "Path to cgroup.event_control is too long");

	event_control = FUNC6(event_control_path, O_WRONLY);
	if (event_control == -1)
		FUNC3(1, "Cannot open %s", event_control_path);

	efd = FUNC5(0, 0);
	if (efd == -1)
		FUNC3(1, "eventfd() failed");

	ret = FUNC10(line, LINE_MAX, "%d %d %s", efd, cfd, argv[2]);
	if (ret >= LINE_MAX)
		FUNC4(1, "Arguments string is too long");

	ret = FUNC12(event_control, line, FUNC11(line) + 1);
	if (ret == -1)
		FUNC3(1, "Cannot write to cgroup.event_control");

	while (1) {
		uint64_t result;

		ret = FUNC9(efd, &result, sizeof(result));
		if (ret == -1) {
			if (errno == EINTR)
				continue;
			FUNC3(1, "Cannot read from eventfd");
		}
		FUNC1(ret == sizeof(result));

		ret = FUNC0(event_control_path, W_OK);
		if ((ret == -1) && (errno == ENOENT)) {
			FUNC8("The cgroup seems to have removed.");
			break;
		}

		if (ret == -1)
			FUNC3(1, "cgroup.event_control is not accessible any more");

		FUNC7("%s %s: crossed\n", argv[1], argv[2]);
	}

	return 0;
}