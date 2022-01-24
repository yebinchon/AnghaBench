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
 int /*<<< orphan*/  MS_BIND ; 
 int FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC3(void)
{
	int ret;

	ret = FUNC2("/dev/pts/ptmx", "/dev/ptmx", NULL, MS_BIND, NULL);
	if (ret < 0) {
		FUNC1(stderr, "Failed to bind mount \"/dev/pts/ptmx\" to "
				"\"/dev/ptmx\" mount namespace\n");
		return -1;
	}

	ret = FUNC0("/dev/ptmx", "/dev/pts/");
	if (ret < 0)
		return -1;

	return 0;
}