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
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 scalar_t__ ESOCKTNOSUPPORT ; 
 int /*<<< orphan*/  IP4_ADDR ; 
 int /*<<< orphan*/  IP4_MAPPED6 ; 
 int /*<<< orphan*/  IP6_ADDR ; 
 int SOCK_DCCP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC5(int proto, const char *proto_str)
{
	if (proto == SOCK_DCCP) {
		int test_fd;

		test_fd = FUNC4(AF_INET, proto, 0);
		if (test_fd < 0) {
			if (errno == ESOCKTNOSUPPORT) {
				FUNC2(stderr, "DCCP not supported: skipping DCCP tests\n");
				return;
			} else
				FUNC1(1, errno, "failed to create a DCCP socket");
		}
		FUNC0(test_fd);
	}

	FUNC2(stderr, "%s IPv4 ... ", proto_str);
	FUNC3(AF_INET, AF_INET, proto, IP4_ADDR);

	FUNC2(stderr, "%s IPv6 ... ", proto_str);
	FUNC3(AF_INET6, AF_INET6, proto, IP6_ADDR);

	FUNC2(stderr, "%s IPv4 mapped to IPv6 ... ", proto_str);
	FUNC3(AF_INET, AF_INET6, proto, IP4_MAPPED6);
}