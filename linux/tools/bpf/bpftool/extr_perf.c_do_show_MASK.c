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
 int FTW_ACTIONRETVAL ; 
 int FTW_PHYS ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  show_proc ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(int argc, char **argv)
{
	int flags = FTW_ACTIONRETVAL | FTW_PHYS;
	int err = 0, nopenfd = 16;

	if (!FUNC0())
		return -1;

	if (json_output)
		FUNC2(json_wtr);
	if (FUNC3("/proc", show_proc, nopenfd, flags) == -1) {
		FUNC4("%s", FUNC5(errno));
		err = -1;
	}
	if (json_output)
		FUNC1(json_wtr);

	return err;
}