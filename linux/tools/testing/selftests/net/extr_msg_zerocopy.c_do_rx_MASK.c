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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  POLLIN ; 
 int SOCK_STREAM ; 
 int bytes ; 
 scalar_t__ cfg_runtime_ms ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  packets ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC8(int domain, int type, int protocol)
{
	const int cfg_receiver_wait_ms = 400;
	uint64_t tstop;
	int fd;

	fd = FUNC4(domain, type, protocol);

	tstop = FUNC7() + cfg_runtime_ms + cfg_receiver_wait_ms;
	do {
		if (type == SOCK_STREAM)
			FUNC2(fd);
		else
			FUNC1(fd, type);

		FUNC3(fd, POLLIN);

	} while (FUNC7() < tstop);

	if (FUNC0(fd))
		FUNC5(1, errno, "close");

	FUNC6(stderr, "rx=%d (%d MB)\n", packets, bytes >> 20);
}