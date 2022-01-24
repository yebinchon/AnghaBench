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
struct test_params {int /*<<< orphan*/  protocol; int /*<<< orphan*/  recv_family; int /*<<< orphan*/  recv_port; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 scalar_t__ EADDRINUSE ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEPORT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int,struct sockaddr* const,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr* const) ; 
 struct sockaddr* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC9(const struct test_params p)
{
	struct sockaddr * const addr =
		FUNC5(p.recv_family, p.recv_port);
	int fd1, fd2, opt;

	FUNC3(stderr, "Testing too many filters...\n");
	fd1 = FUNC8(p.recv_family, p.protocol, 0);
	if (fd1 < 0)
		FUNC2(1, errno, "failed to create socket 1");
	fd2 = FUNC8(p.recv_family, p.protocol, 0);
	if (fd2 < 0)
		FUNC2(1, errno, "failed to create socket 2");

	opt = 1;
	if (FUNC6(fd1, SOL_SOCKET, SO_REUSEPORT, &opt, sizeof(opt)))
		FUNC2(1, errno, "failed to set SO_REUSEPORT on socket 1");
	if (FUNC6(fd2, SOL_SOCKET, SO_REUSEPORT, &opt, sizeof(opt)))
		FUNC2(1, errno, "failed to set SO_REUSEPORT on socket 2");

	FUNC0(fd1, 10);
	FUNC0(fd2, 10);

	if (FUNC1(fd1, addr, FUNC7()))
		FUNC2(1, errno, "failed to bind recv socket 1");

	if (!FUNC1(fd2, addr, FUNC7()) && errno != EADDRINUSE)
		FUNC2(1, errno, "bind socket 2 should fail with EADDRINUSE");

	FUNC4(addr);
}