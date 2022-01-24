#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {void* sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  one ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  FIONBIO ; 
 int /*<<< orphan*/  S1_PORT ; 
 int /*<<< orphan*/  S2_PORT ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int,struct sockaddr*,int) ; 
 int c1 ; 
 int c2 ; 
 int FUNC2 (int,struct sockaddr*,int) ; 
 int errno ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ p1 ; 
 scalar_t__ p2 ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int s1 ; 
 int s2 ; 
 int FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(int verbose)
{
	int i, err, one = 1;
	struct sockaddr_in addr;
	int *fds[4] = {&s1, &s2, &c1, &c2};

	s1 = s2 = p1 = p2 = c1 = c2 = 0;

	/* Init sockets */
	for (i = 0; i < 4; i++) {
		*fds[i] = FUNC11(AF_INET, SOCK_STREAM, 0);
		if (*fds[i] < 0) {
			FUNC8("socket s1 failed()");
			return errno;
		}
	}

	/* Allow reuse */
	for (i = 0; i < 2; i++) {
		err = FUNC10(*fds[i], SOL_SOCKET, SO_REUSEADDR,
				 (char *)&one, sizeof(one));
		if (err) {
			FUNC8("setsockopt failed()");
			return errno;
		}
	}

	/* Non-blocking sockets */
	for (i = 0; i < 2; i++) {
		err = FUNC5(*fds[i], FIONBIO, (char *)&one);
		if (err < 0) {
			FUNC8("ioctl s1 failed()");
			return errno;
		}
	}

	/* Bind server sockets */
	FUNC7(&addr, 0, sizeof(struct sockaddr_in));
	addr.sin_family = AF_INET;
	addr.sin_addr.s_addr = FUNC4("127.0.0.1");

	addr.sin_port = FUNC3(S1_PORT);
	err = FUNC1(s1, (struct sockaddr *)&addr, sizeof(addr));
	if (err < 0) {
		FUNC8("bind s1 failed()\n");
		return errno;
	}

	addr.sin_port = FUNC3(S2_PORT);
	err = FUNC1(s2, (struct sockaddr *)&addr, sizeof(addr));
	if (err < 0) {
		FUNC8("bind s2 failed()\n");
		return errno;
	}

	/* Listen server sockets */
	addr.sin_port = FUNC3(S1_PORT);
	err = FUNC6(s1, 32);
	if (err < 0) {
		FUNC8("listen s1 failed()\n");
		return errno;
	}

	addr.sin_port = FUNC3(S2_PORT);
	err = FUNC6(s2, 32);
	if (err < 0) {
		FUNC8("listen s1 failed()\n");
		return errno;
	}

	/* Initiate Connect */
	addr.sin_port = FUNC3(S1_PORT);
	err = FUNC2(c1, (struct sockaddr *)&addr, sizeof(addr));
	if (err < 0 && errno != EINPROGRESS) {
		FUNC8("connect c1 failed()\n");
		return errno;
	}

	addr.sin_port = FUNC3(S2_PORT);
	err = FUNC2(c2, (struct sockaddr *)&addr, sizeof(addr));
	if (err < 0 && errno != EINPROGRESS) {
		FUNC8("connect c2 failed()\n");
		return errno;
	} else if (err < 0) {
		err = 0;
	}

	/* Accept Connecrtions */
	p1 = FUNC0(s1, NULL, NULL);
	if (p1 < 0) {
		FUNC8("accept s1 failed()\n");
		return errno;
	}

	p2 = FUNC0(s2, NULL, NULL);
	if (p2 < 0) {
		FUNC8("accept s1 failed()\n");
		return errno;
	}

	if (verbose) {
		FUNC9("connected sockets: c1 <-> p1, c2 <-> p2\n");
		FUNC9("cgroups binding: c1(%i) <-> s1(%i) - - - c2(%i) <-> s2(%i)\n",
			c1, s1, c2, s2);
	}
	return 0;
}