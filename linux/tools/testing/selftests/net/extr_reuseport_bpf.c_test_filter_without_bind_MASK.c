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
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEPORT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC7(void)
{
	int fd1, fd2, opt = 1;

	FUNC4(stderr, "Testing filter add without bind...\n");
	fd1 = FUNC6(AF_INET, SOCK_DGRAM, 0);
	if (fd1 < 0)
		FUNC3(1, errno, "failed to create socket 1");
	fd2 = FUNC6(AF_INET, SOCK_DGRAM, 0);
	if (fd2 < 0)
		FUNC3(1, errno, "failed to create socket 2");
	if (FUNC5(fd1, SOL_SOCKET, SO_REUSEPORT, &opt, sizeof(opt)))
		FUNC3(1, errno, "failed to set SO_REUSEPORT on socket 1");
	if (FUNC5(fd2, SOL_SOCKET, SO_REUSEPORT, &opt, sizeof(opt)))
		FUNC3(1, errno, "failed to set SO_REUSEPORT on socket 2");

	FUNC1(fd1, 10);
	FUNC0(fd2, 10);

	FUNC2(fd1);
	FUNC2(fd2);
}