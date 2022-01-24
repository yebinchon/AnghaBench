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
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char**) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC4 (char*) ; 

int FUNC5(int argc, char **argv)
{
	FUNC2(argc, argv);

	if (FUNC4("ip link set dev lo mtu 1500"))
		FUNC0(1, errno, "ip link set mtu");
	if (FUNC4("ip addr add dev lo 172.17.0.1/24"))
		FUNC0(1, errno, "ip addr add");

	FUNC3();

	FUNC1(stderr, "OK\n\n");
	return 0;
}