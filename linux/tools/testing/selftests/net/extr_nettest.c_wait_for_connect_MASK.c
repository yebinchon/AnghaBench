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
typedef  int /*<<< orphan*/  val ;
struct timeval {scalar_t__ tv_sec; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FD_SETSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_ERROR ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ prog_timeout ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(int sd)
{
	struct timeval _tv = { .tv_sec = prog_timeout }, *tv = NULL;
	fd_set wfd;
	int val = 0, sz = sizeof(val);
	int rc;

	FUNC1(&wfd);
	FUNC0(sd, &wfd);

	if (prog_timeout)
		tv = &_tv;

	rc = FUNC5(FD_SETSIZE, NULL, &wfd, NULL, tv);
	if (rc == 0) {
		FUNC4("connect timed out\n");
		return -2;
	} else if (rc < 0) {
		FUNC3("select failed");
		return -3;
	}

	if (FUNC2(sd, SOL_SOCKET, SO_ERROR, &val, (socklen_t *)&sz) < 0) {
		FUNC3("getsockopt(SO_ERROR) failed");
		return -4;
	}

	if (val != 0) {
		FUNC4("connect failed: %d: %s\n", val, FUNC6(val));
		return -1;
	}

	return 0;
}