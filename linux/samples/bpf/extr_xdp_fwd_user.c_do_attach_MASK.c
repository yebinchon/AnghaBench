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
 int FUNC0 (int,int*,int*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

__attribute__((used)) static int FUNC3(int idx, int prog_fd, int map_fd, const char *name)
{
	int err;

	err = FUNC1(idx, prog_fd, 0);
	if (err < 0) {
		FUNC2("ERROR: failed to attach program to %s\n", name);
		return err;
	}

	/* Adding ifindex as a possible egress TX port */
	err = FUNC0(map_fd, &idx, &idx, 0);
	if (err)
		FUNC2("ERROR: failed using device %s as TX-port\n", name);

	return err;
}