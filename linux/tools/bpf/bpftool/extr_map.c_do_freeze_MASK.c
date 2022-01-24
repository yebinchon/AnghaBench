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

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int*,char***) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(int argc, char **argv)
{
	int err, fd;

	if (!FUNC1(2))
		return -1;

	fd = FUNC5(&argc, &argv);
	if (fd < 0)
		return -1;

	if (argc) {
		FUNC3(fd);
		return FUNC0();
	}

	err = FUNC2(fd);
	FUNC3(fd);
	if (err) {
		FUNC6("failed to freeze map: %s", FUNC7(errno));
		return err;
	}

	if (json_output)
		FUNC4(json_wtr);

	return 0;
}